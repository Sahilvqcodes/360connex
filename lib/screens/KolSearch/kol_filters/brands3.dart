import 'package:connex/controller/home_controller.dart';
import 'package:connex/screens/KolSearch/kol_filters/filters_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Brands3Filters extends GetView<StoreController> {
  const Brands3Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              filtersConst.BRAND3,
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
                  const Text(
                    "Expand and amplify KOLs Advocates to speak up for Erleada",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Commercial Actions",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 5,
                  // ),
                  ...List.generate(
                    filtersConst.EXP_CLINICAL_BRAND_ERLEADA.length,
                    (index) => MediaQuery.removePadding(
                      context: context,
                      child: CheckboxListTile(
                          activeColor: Theme.of(context).colorScheme.primary,
                          value: false,
                          title: Text(
                            filtersConst.EXP_CLINICAL_BRAND_ERLEADA[index],
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
                      "Medical Actions",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),

                  ...List.generate(
                    filtersConst.EXP_CLINICAL_BRAND_MEDICAL_ERLEADA.length,
                    (index) => MediaQuery.removePadding(
                      context: context,
                      child: CheckboxListTile(
                          activeColor: Theme.of(context).colorScheme.primary,
                          value: false,
                          title: Text(
                            filtersConst
                                .EXP_CLINICAL_BRAND_MEDICAL_ERLEADA[index],
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
                  const Text(
                    "Magnify KOL voices to empower Black men to re-engage with the health system for Prostate screening",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Commercial Actions",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ...List.generate(
                        filtersConst
                            .EXP_CLINICAL_BRAND_COM_MAGNIFY_ERLEADA.length,
                        (index) => MediaQuery.removePadding(
                          context: context,
                          child: CheckboxListTile(
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: false,
                              title: Text(
                                filtersConst
                                        .EXP_CLINICAL_BRAND_COM_MAGNIFY_ERLEADA[
                                    index],
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
                          "Medical Actions",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ...List.generate(
                        filtersConst
                            .EXP_CLINICAL_BRAND_MEDICAL_ERLEADA_MAGNIFY.length,
                        (index) => MediaQuery.removePadding(
                          context: context,
                          child: CheckboxListTile(
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: false,
                              title: Text(
                                filtersConst
                                        .EXP_CLINICAL_BRAND_MEDICAL_ERLEADA_MAGNIFY[
                                    index],
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
                          "Broaden & strengthen experts voices for accelerating Advanced Prostate Cancer Care in Urology",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
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
                              "Commercial Actions",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          ...List.generate(
                            filtersConst
                                .EXP_CLINICAL_BRAND_COM_BROADEN_ERLEADA.length,
                            (index) => MediaQuery.removePadding(
                              context: context,
                              child: CheckboxListTile(
                                  activeColor:
                                      Theme.of(context).colorScheme.primary,
                                  value: false,
                                  title: Text(
                                    filtersConst
                                            .EXP_CLINICAL_BRAND_COM_BROADEN_ERLEADA[
                                        index],
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
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              "Medical Actions",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                          ...List.generate(
                            filtersConst
                                .EXP_CLINICAL_BRAND_MEDICAL_ERLEADA_BROADEN
                                .length,
                            (index) => MediaQuery.removePadding(
                              context: context,
                              child: CheckboxListTile(
                                  activeColor:
                                      Theme.of(context).colorScheme.primary,
                                  value: false,
                                  title: Text(
                                    filtersConst
                                            .EXP_CLINICAL_BRAND_MEDICAL_ERLEADA_BROADEN[
                                        index],
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
                        ],
                      )
                    ],
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
                          filtersConst.ERLEADA_Industry_Clinical.length,
                          (index) => MediaQuery.removePadding(
                            context: context,
                            child: CheckboxListTile(
                                activeColor:
                                    Theme.of(context).colorScheme.primary,
                                value: false,
                                title: Text(
                                  filtersConst.ERLEADA_Industry_Clinical[index],
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
                          filtersConst.ERLEADA_Speaking.length,
                          (index) => MediaQuery.removePadding(
                            context: context,
                            child: CheckboxListTile(
                                activeColor:
                                    Theme.of(context).colorScheme.primary,
                                value: false,
                                title: Text(
                                  filtersConst.ERLEADA_Speaking[index],
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
                                filtersConst.ERLEADA_KOLIn_Clinical.length,
                                (index) => MediaQuery.removePadding(
                                  context: context,
                                  child: CheckboxListTile(
                                      activeColor:
                                          Theme.of(context).colorScheme.primary,
                                      value: false,
                                      title: Text(
                                        filtersConst
                                            .ERLEADA_KOLIn_Clinical[index],
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color:
                                              Color.fromARGB(255, 101, 99, 99),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      controlAffinity:
                                          ListTileControlAffinity.leading,
                                      onChanged: (isChecked) {}),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Engagement Interest",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
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
                                        .DARZALEX_KOLIn_Engagement_Content
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
                                        .DARZALEX_KOLIn_Engagement_Badges
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
                                  controller.BrandsName.contains(
                                          filtersConst.BRAND2)
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 15.0),
                                              child: Text(
                                                filtersConst.BRAND2,
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            ...List.generate(
                                              filtersConst
                                                  .DARZALEX_KOLIn_Engagement_MM
                                                  .length,
                                              (index) =>
                                                  MediaQuery.removePadding(
                                                context: context,
                                                child: CheckboxListTile(
                                                    activeColor:
                                                        Theme.of(context)
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
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    controlAffinity:
                                                        ListTileControlAffinity
                                                            .leading,
                                                    onChanged: (isChecked) {}),
                                              ),
                                            ),
                                          ],
                                        )
                                      : Container(),
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
                                        .DARZALEX_KOLIn_Engagement_Social
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
      ),
    );
  }
}
