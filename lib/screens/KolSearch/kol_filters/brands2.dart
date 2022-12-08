import 'package:connex/screens/KolSearch/kol_filters/filters_const.dart';
import 'package:flutter/material.dart';

class Brands2Filters extends StatelessWidget {
  const Brands2Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            filtersConst.BRAND2,
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Strategic Imperatives",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Commercial",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                // const SizedBox(
                //   height: 5,
                // ),
                ...List.generate(
                  filtersConst.EXP_CLINICAL_BRAND_DARZALEX.length,
                  (index) => MediaQuery.removePadding(
                    context: context,
                    child: CheckboxListTile(
                        activeColor: Theme.of(context).colorScheme.primary,
                        value: false,
                        title: Text(
                          filtersConst.EXP_CLINICAL_BRAND_DARZALEX[index],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 101, 99, 99),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (isChecked) {}),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Medical",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),

                ...List.generate(
                  filtersConst.EXP_CLINICAL_BRAND_MEDICAL_DARZALEX.length,
                  (index) => MediaQuery.removePadding(
                    context: context,
                    child: CheckboxListTile(
                        activeColor: Theme.of(context).colorScheme.primary,
                        value: false,
                        title: Text(
                          filtersConst
                              .EXP_CLINICAL_BRAND_MEDICAL_DARZALEX[index],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 101, 99, 99),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (isChecked) {}),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "CARVYKTI-Commercial",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),

                ...List.generate(
                  filtersConst.EXP_CLINICAL_BRAND_CARVYKTI_DARZALEX.length,
                  (index) => MediaQuery.removePadding(
                    context: context,
                    child: CheckboxListTile(
                        activeColor: Theme.of(context).colorScheme.primary,
                        value: false,
                        title: Text(
                          filtersConst
                              .EXP_CLINICAL_BRAND_CARVYKTI_DARZALEX[index],
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 101, 99, 99),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (isChecked) {}),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Industry Experience",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Clinical Trial Experience",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ...List.generate(
                        filtersConst.DARZALEX_Industry_Clinical.length,
                        (index) => MediaQuery.removePadding(
                          context: context,
                          child: CheckboxListTile(
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: false,
                              title: Text(
                                filtersConst.DARZALEX_Industry_Clinical[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 101, 99, 99),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (isChecked) {}),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Speaking Experience",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ...List.generate(
                        filtersConst.DARZALEX_Speaking.length,
                        (index) => MediaQuery.removePadding(
                          context: context,
                          child: CheckboxListTile(
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: false,
                              title: Text(
                                filtersConst.DARZALEX_Speaking[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 101, 99, 99),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (isChecked) {}),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Treatments",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ...List.generate(
                        filtersConst.DARZALEX_treatments.length,
                        (index) => MediaQuery.removePadding(
                          context: context,
                          child: CheckboxListTile(
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: false,
                              title: Text(
                                filtersConst.DARZALEX_treatments[index],
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 101, 99, 99),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (isChecked) {}),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "KOL INTERESTS",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Clinical Interests",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            ...List.generate(
                              filtersConst.DARZALEX_KOLIn_Clinical.length,
                              (index) => MediaQuery.removePadding(
                                context: context,
                                child: CheckboxListTile(
                                    activeColor:
                                        Theme.of(context).colorScheme.primary,
                                    value: false,
                                    title: Text(
                                      filtersConst
                                          .DARZALEX_KOLIn_Clinical[index],
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Color.fromARGB(255, 101, 99, 99),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    onChanged: (isChecked) {}),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Engagement Interest",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    "Speaking",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                ...List.generate(
                                  filtersConst
                                      .DARZALEX_KOLIn_Engagement_Speaking
                                      .length,
                                  (index) => MediaQuery.removePadding(
                                    context: context,
                                    child: CheckboxListTile(
                                        activeColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        value: false,
                                        title: Text(
                                          filtersConst
                                                  .DARZALEX_KOLIn_Engagement_Speaking[
                                              index],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 101, 99, 99),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: (isChecked) {}),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    "Content",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                ...List.generate(
                                  filtersConst
                                      .DARZALEX_KOLIn_Engagement_Content.length,
                                  (index) => MediaQuery.removePadding(
                                    context: context,
                                    child: CheckboxListTile(
                                        activeColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        value: false,
                                        title: Text(
                                          filtersConst
                                                  .DARZALEX_KOLIn_Engagement_Content[
                                              index],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 101, 99, 99),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: (isChecked) {}),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    "Consulting",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                ...List.generate(
                                  filtersConst
                                      .DARZALEX_KOLIn_Engagement_Consulting
                                      .length,
                                  (index) => MediaQuery.removePadding(
                                    context: context,
                                    child: CheckboxListTile(
                                        activeColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        value: false,
                                        title: Text(
                                          filtersConst
                                                  .DARZALEX_KOLIn_Engagement_Consulting[
                                              index],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 101, 99, 99),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: (isChecked) {}),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    "Research",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                ...List.generate(
                                  filtersConst
                                      .DARZALEX_KOLIn_Engagement_Research
                                      .length,
                                  (index) => MediaQuery.removePadding(
                                    context: context,
                                    child: CheckboxListTile(
                                        activeColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        value: false,
                                        title: Text(
                                          filtersConst
                                                  .DARZALEX_KOLIn_Engagement_Research[
                                              index],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 101, 99, 99),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: (isChecked) {}),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    "Badges",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                ...List.generate(
                                  filtersConst
                                      .DARZALEX_KOLIn_Engagement_Badges.length,
                                  (index) => MediaQuery.removePadding(
                                    context: context,
                                    child: CheckboxListTile(
                                        activeColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        value: false,
                                        title: Text(
                                          filtersConst
                                                  .DARZALEX_KOLIn_Engagement_Badges[
                                              index],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 101, 99, 99),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: (isChecked) {}),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    "HCP Segment",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                ...List.generate(
                                  filtersConst
                                      .DARZALEX_KOLIn_Engagement_HCP.length,
                                  (index) => MediaQuery.removePadding(
                                    context: context,
                                    child: CheckboxListTile(
                                        activeColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        value: false,
                                        title: Text(
                                          filtersConst
                                                  .DARZALEX_KOLIn_Engagement_HCP[
                                              index],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 101, 99, 99),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: (isChecked) {}),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    filtersConst.BRAND2,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                ...List.generate(
                                  filtersConst
                                      .DARZALEX_KOLIn_Engagement_MM.length,
                                  (index) => MediaQuery.removePadding(
                                    context: context,
                                    child: CheckboxListTile(
                                        activeColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        value: false,
                                        title: Text(
                                          filtersConst
                                                  .DARZALEX_KOLIn_Engagement_MM[
                                              index],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 101, 99, 99),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: (isChecked) {}),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Text(
                                    "Social Media",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                ...List.generate(
                                  filtersConst
                                      .DARZALEX_KOLIn_Engagement_Social.length,
                                  (index) => MediaQuery.removePadding(
                                    context: context,
                                    child: CheckboxListTile(
                                        activeColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        value: false,
                                        title: Text(
                                          filtersConst
                                                  .DARZALEX_KOLIn_Engagement_Social[
                                              index],
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Color.fromARGB(
                                                255, 101, 99, 99),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        onChanged: (isChecked) {}),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
