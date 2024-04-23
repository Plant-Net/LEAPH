import argparse
import pandas as pd
import joblib
import os


# HARD_modified VOTING FUNCTION IMPLEMENTATION

def voting_f(pred_prob_df):
    # the dataframe must have columns with probability called as rf_ep, xgb_ep, gnb_epmnb_ep
    pred_votes = {"seq_id": list(pred_prob_df["seq_id"]), "pos_vote": [], "model": []}
    for i in range(len(pred_prob_df)):
        row = pred_prob_df.iloc[i]
        # 4
        if row.rf_ep >= 90 and row.xgb_ep >= 90 and row.gnb_ep >= 90 and row.mnb_ep >= 90:
            pred_votes["pos_vote"].append("4")
            pred_votes["model"].append("rf/xgb/gnb/mnb")
        # 3
        elif row.rf_ep < 90 and row.xgb_ep >= 90 and row.gnb_ep >= 90 and row.mnb_ep >= 90:
            pred_votes["pos_vote"].append("3")
            pred_votes["model"].append("-/xgb/gnb/mnb")
        elif row.rf_ep >= 90 and row.xgb_ep < 90 and row.gnb_ep >= 90 and row.mnb_ep >= 90:
            pred_votes["pos_vote"].append("3")
            pred_votes["model"].append("rf/-/gnb/mnb")
        elif row.rf_ep >= 90 and row.xgb_ep >= 90 and row.gnb_ep < 90 and row.mnb_ep >= 90:
            pred_votes["pos_vote"].append("3")
            pred_votes["model"].append("rf/xgb/-/mnb")
        elif row.rf_ep >= 90 and row.xgb_ep >= 90 and row.gnb_ep >= 90 and row.mnb_ep < 90:
            pred_votes["pos_vote"].append("3")
            pred_votes["model"].append("rf/xgb/gnb/-")
        # 2
        elif row.rf_ep < 90 and row.xgb_ep < 90 and row.gnb_ep >= 90 and row.mnb_ep >= 90:
            pred_votes["pos_vote"].append("2")
            pred_votes["model"].append("-/-/gnb/mnb")
        elif row.rf_ep < 90 and row.xgb_ep >= 90 and row.gnb_ep < 90 and row.mnb_ep >= 90:
            pred_votes["pos_vote"].append("2")
            pred_votes["model"].append("-/xgb/-/mnb")
        elif row.rf_ep < 90 and row.xgb_ep >= 90 and row.gnb_ep >= 90 and row.mnb_ep < 90:
            pred_votes["pos_vote"].append("2")
            pred_votes["model"].append("-/xgb/gnb/-")
        elif row.rf_ep >= 90 and row.xgb_ep < 90 and row.gnb_ep < 90 and row.mnb_ep >= 90:
            pred_votes["pos_vote"].append("2")
            pred_votes["model"].append("rf/-/-/mnb")
        elif row.rf_ep >= 90 and row.xgb_ep < 90 and row.gnb_ep >= 90 and row.mnb_ep < 90:
            pred_votes["pos_vote"].append("2")
            pred_votes["model"].append("rf/-/gnb/-")
        elif row.rf_ep >= 90 and row.xgb_ep >= 90 and row.gnb_ep < 90 and row.mnb_ep < 90:
            pred_votes["pos_vote"].append("2")
            pred_votes["model"].append("rf/xgb/-/-")
        # 1
        elif row.rf_ep < 90 and row.xgb_ep < 90 and row.gnb_ep < 90 and row.mnb_ep >= 90:
            pred_votes["pos_vote"].append("1")
            pred_votes["model"].append("-/-/-/mnb")
        elif row.rf_ep < 90 and row.xgb_ep < 90 and row.gnb_ep >= 90 and row.mnb_ep < 90:
            pred_votes["pos_vote"].append("1")
            pred_votes["model"].append("-/-/gnb/-")
        elif row.rf_ep < 90 and row.xgb_ep >= 90 and row.gnb_ep < 90 and row.mnb_ep < 90:
            pred_votes["pos_vote"].append("1")
            pred_votes["model"].append("-/xgb/-/-")
        elif row.rf_ep >= 90 and row.xgb_ep < 90 and row.gnb_ep < 90 and row.mnb_ep < 90:
            pred_votes["pos_vote"].append("1")
            pred_votes["model"].append("rf/-/-/-")
        else:
            pred_votes["pos_vote"].append("-")
            pred_votes["model"].append("-/-/-/-")

    rank_votes = pd.DataFrame(pred_votes)
    rank_votes.sort_values(by=["pos_vote"], ascending=False, inplace=True)
    return rank_votes


def LEAPH_f(feature_table, container):
    features = feature_table[list(feature_table.columns)[2:]]
    ids = list(feature_table["seq_id"])
    dict_pred = {"seq_id": ids}
    for model in ["rf", "xgb", "gnb", "mnb"]:
        if model != "gnb" and container:
            loaded_model = joblib.load(f"/opt/models/{model}_gs_model.pkl")
        elif model != "gnb" and not container:
            loaded_model = joblib.load(f"./essentials/models/{model}_gs_model.pkl")
        elif model == "gnb" and container:
            loaded_model = joblib.load(f"/opt/models/{model}_model.pkl")
        else:
            loaded_model = joblib.load(f"./essentials/models/{model}_model.pkl")

        predictions = list(loaded_model.predict(features))
        dict_pred[model] = predictions
        pred_prob = loaded_model.predict_proba(features)
        pred_prob_df = pd.DataFrame(pred_prob, columns=loaded_model.classes_)
        eff_pred_prob = [float(f"{el * 100:.1f}") for el in list(pred_prob_df[1])]
        dict_pred[f"{model}_ep"] = eff_pred_prob

    all_pred = pd.DataFrame(dict_pred)
    voted_pred = voting_f(all_pred)
    return voted_pred


if __name__ == '__main__':
    parser = argparse.ArgumentParser(usage="%(prog)s [options]",
                                     description="",
                                     epilog="")
    parser.add_argument("-ft", "--feature_table",
                        help=".tsv file with columns in the exact order of model training/feature table coming from"
                             "build_feature_table.py script")
    parser.add_argument("-o", "--output_dir",
                        help="output directory for LEAPH predictions",
                        default="./LEAPH_results")
    parser.add_argument("-nc", "--not_in_container",
                        help="specify if the script is not executed into a container",
                        action='store_true')
    parser.add_argument("-px", "--prefix",
                        help="prefix that can distinguish your file from other trials of LEAPH predictions")
    args = parser.parse_args()

    os.makedirs(args.output_dir, exist_ok=True)

    if args.not_in_container:
        LEAPH_f(pd.read_csv(args.feature_table, sep="\t"),
                container=False).to_csv(f"{args.output_dir}/{args.prefix}_LEAPH1.0_predictions.tsv",
                                        sep="\t", index=False)
    else:
        LEAPH_f(pd.read_csv(args.feature_table, sep="\t"),
                container=True).to_csv(f"{args.output_dir}/{args.prefix}_LEAPH1.0_predictions.tsv",
                                       sep="\t", index=False)
