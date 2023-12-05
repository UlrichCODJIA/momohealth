import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:nb_utils/nb_utils.dart';

import 'controller/disease_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_leading_image.dart';
import '/widgets/app_bar/appbar_subtitle_one.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DiseaseScreen extends GetWidget<DiseaseController> {
  const DiseaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 14.v),
                child: ListView(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage225x325,
                      height: 225.v,
                      width: 325.h,
                      radius: BorderRadius.circular(10.h)),
                  SizedBox(height: 23.v),
                  Padding(
                      padding: EdgeInsets.only(right: 35.h),
                      child: const HtmlWidget(
                          """<h1>Crise Cardiaque : Informations et Mesures d'Urgence</h1>
  
  <h2>Qu'est-ce qu'une crise cardiaque ?</h2>
  <p>Une crise cardiaque, également connue sous le nom d'infarctus du myocarde, se produit lorsqu'une artère coronaire est bloquée, entraînant une diminution ou un arrêt du flux sanguin vers une partie du muscle cardiaque.</p>
  
  <h2>Signes et symptômes :</h2>
  <ul>
    <li>Douleur thoracique ou inconfort au niveau de la poitrine</li>
    <li>Essoufflement</li>
    <li>Sueur froide</li>
    <li>Nausées ou vomissements</li>
    <li>Sensation d'étouffement</li>
    <li>Vertiges ou évanouissement</li>
  </ul>
  
  <h2>Mesures d'urgence :</h2>
  <ol>
    <li>Appeler immédiatement les services d'urgence (composez le 15 ou le 112).</li>
    <li>Allonger la personne en lui procurant un maximum de confort.</li>
    <li>Si la personne est consciente, lui donner de l'aspirine si elle n'est pas allergique.</li>
    <li>Ne pas donner à boire ou à manger.</li>
    <li>Surveiller la respiration et pratiquer les gestes de premiers secours si nécessaire.</li>
  </ol>
  
  <h2>Prévention :</h2>
  <p>La prévention des crises cardiaques implique généralement un mode de vie sain comprenant une alimentation équilibrée, de l'exercice physique régulier et l'évitement du tabac et de l'alcool en excès.</p>
  
  <p>N'oubliez pas, ces informations ne remplacent pas les conseils médicaux professionnels. En cas d'urgence, contactez immédiatement les services d'urgence.</p>
""")),
                  50.height,
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 31.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(top: 15.v, bottom: 17.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "Information".toUpperCase()));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
