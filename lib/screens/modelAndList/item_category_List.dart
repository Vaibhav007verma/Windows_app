 import 'item_Model.dart';

class ItemCategoryList{


  List<ItemModel> pressureList = [
    ItemModel(id: "1", itemName: "Maximum Air Scour Pressure ",itemValue: "0.75",itemType: "bar",),
    ItemModel(id: "2", itemName: "Filterate Pressure",itemValue: "0.50",itemType: "bar",),
    ItemModel(id: "3", itemName: "Filtration Piping Pressure Drop: 25°C",itemValue: "0.40",itemType: "bar",),
    ItemModel(id: "4", itemName: "Strainer Pressure Drop: 25°C",itemValue: "0.10",itemType: "bar",),
    ItemModel(id: "5", itemName: "BackWash Piping Pressure: 25°C",itemValue: "0.50",itemType: "bar",),
    ItemModel(id: "6", itemName: "CIP Piping Pressure Drop: 35°C",itemValue: "2.50",itemType: "bar",),
  ];


  List<ItemModel> tankStorageList = [
    ItemModel(id: "1", itemName: "Chemical Storage Time ",itemValue: "30",itemType: "days",),
    ItemModel(id: "2", itemName: "Backwash Only Tank Refill Rate",itemValue: "0.0",itemType: "% of filtrare flow",),
  ];

  List<ItemModel> tankSizeFactorList = [
    ItemModel(id: "1", itemName: "BW + Filtrate Tank ",itemValue: "100",itemType: "% of compound minimum",),
    ItemModel(id: "2", itemName: "BW Only Tank",itemValue: "100",itemType: "% of compound minimum",),
    ItemModel(id: "3", itemName: "CIP Tank",itemValue: "200",itemType: "% of module volume",),
  ];

  List<ItemModel> powerList = [
    ItemModel(id: "1", itemName: "PLC Power Requirement per Unit ",itemValue: "30",itemType: "kW",),
    ItemModel(id: "2", itemName: "Valve Power Requirement per Valve",itemValue: "0.00",itemType: "kW",),
  ];

  List<ItemModel> valvesList = [
    ItemModel(id: "1", itemName: "Valves per Unit ",itemValue: "6",itemType: "",),
    ItemModel(id: "2", itemName: "Valves Open/Close Action Duration",itemValue: "100",itemType: "s",),
  ];








}