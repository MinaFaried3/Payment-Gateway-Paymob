// To parse this JSON data, do
//
//     final orderId = orderIdFromJson(jsonString);

import 'dart:convert';

OrderId orderIdFromJson(String str) => OrderId.fromJson(json.decode(str));

String orderIdToJson(OrderId data) => json.encode(data.toJson());

class OrderId {
  final int? id;
  final DateTime? createdAt;
  final bool? deliveryNeeded;
  final Merchant? merchant;
  final dynamic collector;
  final int? amountCents;
  final ShippingData? shippingData;
  final String? currency;
  final bool? isPaymentLocked;
  final bool? isReturn;
  final bool? isCancel;
  final bool? isReturned;
  final bool? isCanceled;
  final dynamic merchantOrderId;
  final dynamic walletNotification;
  final int? paidAmountCents;
  final bool? notifyUserWithEmail;
  final List<Item>? items;
  final String? orderUrl;
  final int? commissionFees;
  final int? deliveryFeesCents;
  final int? deliveryVatCents;
  final String? paymentMethod;
  final dynamic merchantStaffTag;
  final String? apiSource;
  final Data? data;
  final String? token;
  final String? url;

  OrderId({
    this.id,
    this.createdAt,
    this.deliveryNeeded,
    this.merchant,
    this.collector,
    this.amountCents,
    this.shippingData,
    this.currency,
    this.isPaymentLocked,
    this.isReturn,
    this.isCancel,
    this.isReturned,
    this.isCanceled,
    this.merchantOrderId,
    this.walletNotification,
    this.paidAmountCents,
    this.notifyUserWithEmail,
    this.items,
    this.orderUrl,
    this.commissionFees,
    this.deliveryFeesCents,
    this.deliveryVatCents,
    this.paymentMethod,
    this.merchantStaffTag,
    this.apiSource,
    this.data,
    this.token,
    this.url,
  });

  factory OrderId.fromJson(Map<String, dynamic> json) => OrderId(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        deliveryNeeded: json["delivery_needed"],
        merchant: json["merchant"] == null
            ? null
            : Merchant.fromJson(json["merchant"]),
        collector: json["collector"],
        amountCents: json["amount_cents"],
        shippingData: json["shipping_data"] == null
            ? null
            : ShippingData.fromJson(json["shipping_data"]),
        currency: json["currency"],
        isPaymentLocked: json["is_payment_locked"],
        isReturn: json["is_return"],
        isCancel: json["is_cancel"],
        isReturned: json["is_returned"],
        isCanceled: json["is_canceled"],
        merchantOrderId: json["merchant_order_id"],
        walletNotification: json["wallet_notification"],
        paidAmountCents: json["paid_amount_cents"],
        notifyUserWithEmail: json["notify_user_with_email"],
        items: json["items"] == null
            ? []
            : List<Item>.from(json["items"]!.map((x) => Item.fromJson(x))),
        orderUrl: json["order_url"],
        commissionFees: json["commission_fees"],
        deliveryFeesCents: json["delivery_fees_cents"],
        deliveryVatCents: json["delivery_vat_cents"],
        paymentMethod: json["payment_method"],
        merchantStaffTag: json["merchant_staff_tag"],
        apiSource: json["api_source"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        token: json["token"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "delivery_needed": deliveryNeeded,
        "merchant": merchant?.toJson(),
        "collector": collector,
        "amount_cents": amountCents,
        "shipping_data": shippingData?.toJson(),
        "currency": currency,
        "is_payment_locked": isPaymentLocked,
        "is_return": isReturn,
        "is_cancel": isCancel,
        "is_returned": isReturned,
        "is_canceled": isCanceled,
        "merchant_order_id": merchantOrderId,
        "wallet_notification": walletNotification,
        "paid_amount_cents": paidAmountCents,
        "notify_user_with_email": notifyUserWithEmail,
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "order_url": orderUrl,
        "commission_fees": commissionFees,
        "delivery_fees_cents": deliveryFeesCents,
        "delivery_vat_cents": deliveryVatCents,
        "payment_method": paymentMethod,
        "merchant_staff_tag": merchantStaffTag,
        "api_source": apiSource,
        "data": data?.toJson(),
        "token": token,
        "url": url,
      };
}

class Data {
  Data();

  factory Data.fromJson(Map<String, dynamic> json) => Data();

  Map<String, dynamic> toJson() => {};
}

class Item {
  final String? name;
  final String? description;
  final int? amountCents;
  final int? quantity;

  Item({
    this.name,
    this.description,
    this.amountCents,
    this.quantity,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        description: json["description"],
        amountCents: json["amount_cents"],
        quantity: json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "amount_cents": amountCents,
        "quantity": quantity,
      };
}

class Merchant {
  final int? id;
  final DateTime? createdAt;
  final List<String>? phones;
  final List<String>? companyEmails;
  final String? companyName;
  final String? state;
  final String? country;
  final String? city;
  final String? postalCode;
  final String? street;

  Merchant({
    this.id,
    this.createdAt,
    this.phones,
    this.companyEmails,
    this.companyName,
    this.state,
    this.country,
    this.city,
    this.postalCode,
    this.street,
  });

  factory Merchant.fromJson(Map<String, dynamic> json) => Merchant(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        phones: json["phones"] == null
            ? []
            : List<String>.from(json["phones"]!.map((x) => x)),
        companyEmails: json["company_emails"] == null
            ? []
            : List<String>.from(json["company_emails"]!.map((x) => x)),
        companyName: json["company_name"],
        state: json["state"],
        country: json["country"],
        city: json["city"],
        postalCode: json["postal_code"],
        street: json["street"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "phones":
            phones == null ? [] : List<dynamic>.from(phones!.map((x) => x)),
        "company_emails": companyEmails == null
            ? []
            : List<dynamic>.from(companyEmails!.map((x) => x)),
        "company_name": companyName,
        "state": state,
        "country": country,
        "city": city,
        "postal_code": postalCode,
        "street": street,
      };
}

class ShippingData {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? street;
  final String? building;
  final String? floor;
  final String? apartment;
  final String? city;
  final String? state;
  final String? country;
  final String? email;
  final String? phoneNumber;
  final String? postalCode;
  final String? extraDescription;
  final String? shippingMethod;
  final int? orderId;
  final int? order;

  ShippingData({
    this.id,
    this.firstName,
    this.lastName,
    this.street,
    this.building,
    this.floor,
    this.apartment,
    this.city,
    this.state,
    this.country,
    this.email,
    this.phoneNumber,
    this.postalCode,
    this.extraDescription,
    this.shippingMethod,
    this.orderId,
    this.order,
  });

  factory ShippingData.fromJson(Map<String, dynamic> json) => ShippingData(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        street: json["street"],
        building: json["building"],
        floor: json["floor"],
        apartment: json["apartment"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        postalCode: json["postal_code"],
        extraDescription: json["extra_description"],
        shippingMethod: json["shipping_method"],
        orderId: json["order_id"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "street": street,
        "building": building,
        "floor": floor,
        "apartment": apartment,
        "city": city,
        "state": state,
        "country": country,
        "email": email,
        "phone_number": phoneNumber,
        "postal_code": postalCode,
        "extra_description": extraDescription,
        "shipping_method": shippingMethod,
        "order_id": orderId,
        "order": order,
      };
}
