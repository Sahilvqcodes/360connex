import 'package:connex/screens/KolSearch/kol_filters/filters_const.dart';
import 'package:flutter/material.dart';

class Brands1Filters extends StatelessWidget {
  const Brands1Filters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            filtersConst.BRAND1,
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
                    "Medical",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),

                ...List.generate(
                  filtersConst.EXP_CLINICAL_BRAND_MEDICAL.length,
                  (index) => MediaQuery.removePadding(
                    context: context,
                    child: CheckboxListTile(
                        activeColor: Theme.of(context).colorScheme.primary,
                        value: false,
                        title: Text(
                          filtersConst.EXP_CLINICAL_BRAND_MEDICAL[index],
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
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          filtersConst.BRAND1,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ...List.generate(
                        filtersConst.EXP_CLINICAL_BRAND_MEDICAL.length,
                        (index) => MediaQuery.removePadding(
                          context: context,
                          child: CheckboxListTile(
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: false,
                              title: Text(
                                filtersConst.EXP_CLINICAL_BRAND_MEDICAL[index],
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
                          "Acalabrutinib (Calquence)",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ...List.generate(
                        filtersConst
                            .IMBRUVICA_Industry_Clinical_Acalabrutinib.length,
                        (index) => MediaQuery.removePadding(
                          context: context,
                          child: CheckboxListTile(
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: false,
                              title: Text(
                                filtersConst
                                        .IMBRUVICA_Industry_Clinical_Acalabrutinib[
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
                          "Zanubrutinib (Brukinsa)",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ...List.generate(
                        filtersConst
                            .IMBRUVICA_Industry_Clinical_Zanubrutinib.length,
                        (index) => MediaQuery.removePadding(
                          context: context,
                          child: CheckboxListTile(
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: false,
                              title: Text(
                                filtersConst
                                        .IMBRUVICA_Industry_Clinical_Zanubrutinib[
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
                          "Venetoclax (Venclexta)",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ...List.generate(
                        filtersConst
                            .IMBRUVICA_Industry_Clinical_Venetoclax.length,
                        (index) => MediaQuery.removePadding(
                          context: context,
                          child: CheckboxListTile(
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: false,
                              title: Text(
                                filtersConst
                                        .IMBRUVICA_Industry_Clinical_Venetoclax[
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
                          "Pirtobrutinib",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ...List.generate(
                        filtersConst
                            .IMBRUVICA_Industry_Clinical_Pirtobrutinib.length,
                        (index) => MediaQuery.removePadding(
                          context: context,
                          child: CheckboxListTile(
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: false,
                              title: Text(
                                filtersConst
                                        .IMBRUVICA_Industry_Clinical_Pirtobrutinib[
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
                          "CAR-T",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ...List.generate(
                        filtersConst.IMBRUVICA_Industry_Clinical_CART.length,
                        (index) => MediaQuery.removePadding(
                          context: context,
                          child: CheckboxListTile(
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: false,
                              title: Text(
                                filtersConst
                                    .IMBRUVICA_Industry_Clinical_CART[index],
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
                          "Umbralisib + Ublituximab",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      ...List.generate(
                        filtersConst
                            .IMBRUVICA_Industry_Clinical_Umbralisib.length,
                        (index) => MediaQuery.removePadding(
                          context: context,
                          child: CheckboxListTile(
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: false,
                              title: Text(
                                filtersConst
                                        .IMBRUVICA_Industry_Clinical_Umbralisib[
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
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Speaker",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            ...List.generate(
                              filtersConst.IMBRUVICA_Speaking_Speaker.length,
                              (index) => MediaQuery.removePadding(
                                context: context,
                                child: CheckboxListTile(
                                    activeColor:
                                        Theme.of(context).colorScheme.primary,
                                    value: false,
                                    title: Text(
                                      filtersConst
                                          .IMBRUVICA_Speaking_Speaker[index],
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
                      ...List.generate(
                        filtersConst.IMBRUVICA_Speaking.length,
                        (index) => MediaQuery.removePadding(
                          context: context,
                          child: CheckboxListTile(
                              activeColor:
                                  Theme.of(context).colorScheme.primary,
                              value: false,
                              title: Text(
                                filtersConst.IMBRUVICA_Speaking[index],
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
                              filtersConst.IMBRUVICA_Commercial_In.length,
                              (index) => MediaQuery.removePadding(
                                context: context,
                                child: CheckboxListTile(
                                    activeColor:
                                        Theme.of(context).colorScheme.primary,
                                    value: false,
                                    title: Text(
                                      filtersConst
                                          .IMBRUVICA_Commercial_In[index],
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
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "ENGAGEMENT INTEREST",
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
                              "Interest Badges",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            ...List.generate(
                              filtersConst.IMBRUVICA_Engagement_Badges.length,
                              (index) => MediaQuery.removePadding(
                                context: context,
                                child: CheckboxListTile(
                                    activeColor:
                                        Theme.of(context).colorScheme.primary,
                                    value: false,
                                    title: Text(
                                      filtersConst
                                          .IMBRUVICA_Engagement_Badges[index],
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
                            const Text(
                              "Advocacy Scoring",
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
                                    "I Mono",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                ...List.generate(
                                  filtersConst
                                      .IMBRUVICA_Engagement_Advocacy_MONO
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
                                                  .IMBRUVICA_Engagement_Advocacy_MONO[
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
                                    "I+V",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                ...List.generate(
                                  filtersConst
                                      .IMBRUVICA_Engagement_Advocacy_IV.length,
                                  (index) => MediaQuery.removePadding(
                                    context: context,
                                    child: CheckboxListTile(
                                        activeColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        value: false,
                                        title: Text(
                                          filtersConst
                                                  .IMBRUVICA_Engagement_Advocacy_IV[
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
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    "Indication Focus",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                ...List.generate(
                  filtersConst.IMBRUVICA_Indication_Focus.length,
                  (index) => MediaQuery.removePadding(
                    context: context,
                    child: CheckboxListTile(
                        activeColor: Theme.of(context).colorScheme.primary,
                        value: false,
                        title: Text(
                          filtersConst.IMBRUVICA_Indication_Focus[index],
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
                    "Treatment Choice",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ),
                ...List.generate(
                  filtersConst.IMBRUVICA_Treatment.length,
                  (index) => MediaQuery.removePadding(
                    context: context,
                    child: CheckboxListTile(
                        activeColor: Theme.of(context).colorScheme.primary,
                        value: false,
                        title: Text(
                          filtersConst.IMBRUVICA_Treatment[index],
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
        ],
      ),
    );
  }
}
