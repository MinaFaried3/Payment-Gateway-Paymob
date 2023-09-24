// To parse this JSON data, do
//
//     final firstToken = firstTokenFromJson(jsonString);

import 'dart:convert';

FirstToken firstTokenFromJson(String str) =>
    FirstToken.fromJson(json.decode(str));

String firstTokenToJson(FirstToken data) => json.encode(data.toJson());

class FirstToken {
  final Profile? profile;
  final String? token;

  FirstToken({
    this.profile,
    this.token,
  });

  factory FirstToken.fromJson(Map<String, dynamic> json) => FirstToken(
        profile:
            json["profile"] == null ? null : Profile.fromJson(json["profile"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "profile": profile?.toJson(),
        "token": token,
      };
}

class Profile {
  final int? id;
  final User? user;
  final DateTime? createdAt;
  final bool? active;
  final String? profileType;
  final List<String>? phones;
  final List<String>? companyEmails;
  final String? companyName;
  final String? state;
  final String? country;
  final String? city;
  final String? postalCode;
  final String? street;
  final bool? emailNotification;
  final dynamic orderRetrievalEndpoint;
  final dynamic deliveryUpdateEndpoint;
  final dynamic logoUrl;
  final bool? isMobadra;
  final String? sector;
  final bool? is2FaEnabled;
  final int? activationMethod;
  final int? signedUpThrough;
  final int? failedAttempts;
  final List<dynamic>? customExportColumns;
  final List<dynamic>? serverIp;
  final dynamic username;
  final String? primaryPhoneNumber;
  final bool? primaryPhoneVerified;
  final bool? isTempPassword;
  final dynamic otp2FaSentAt;
  final dynamic otp2FaAttempt;
  final DateTime? otpSentAt;
  final String? otpSentTo;
  final DateTime? otpValidatedAt;
  final dynamic awbBanner;
  final dynamic emailBanner;
  final dynamic identificationNumber;
  final String? deliveryStatusCallback;
  final dynamic merchantExternalLink;
  final int? merchantStatus;
  final bool? deactivatedByBank;
  final dynamic bankDeactivationReason;
  final int? bankMerchantStatus;
  final dynamic nationalId;
  final dynamic superAgent;
  final dynamic walletLimitProfile;
  final dynamic address;
  final dynamic commercialRegistration;
  final dynamic commercialRegistrationArea;
  final dynamic distributorCode;
  final dynamic distributorBranchCode;
  final bool? allowTerminalOrderId;
  final bool? allowEncryptionBypass;
  final dynamic walletPhoneNumber;
  final int? suspicious;
  final dynamic latitude;
  final dynamic longitude;
  final BankStaffs? bankStaffs;
  final dynamic bankRejectionReason;
  final bool? bankReceivedDocuments;
  final int? bankMerchantDigitalStatus;
  final dynamic bankDigitalRejectionReason;
  final bool? filledBusinessData;
  final String? dayStartTime;
  final dynamic dayEndTime;
  final bool? withholdTransfers;
  final String? smsSenderName;
  final dynamic withholdTransfersReason;
  final dynamic withholdTransfersNotes;
  final bool? canBillDepositWithCard;
  final bool? canTopupMerchants;
  final dynamic topupTransferId;
  final bool? referralEligible;
  final bool? isEligibleToBeRanger;
  final bool? isRanger;
  final bool? isPoaching;
  final bool? paymobAppMerchant;
  final dynamic settlementFrequency;
  final dynamic dayOfTheWeek;
  final dynamic dayOfTheMonth;
  final bool? allowTransactionNotifications;
  final bool? allowTransferNotifications;
  final double? sallefnyAmountWhole;
  final double? sallefnyFeesWhole;
  final dynamic paymobAppFirstLogin;
  final dynamic paymobAppLastActivity;
  final bool? payoutEnabled;
  final bool? payoutTerms;
  final bool? isBillsNew;
  final bool? canProcessMultipleRefunds;
  final int? settlementClassification;
  final bool? instantSettlementEnabled;
  final bool? instantSettlementTransactionOtpVerified;
  final dynamic preferredLanguage;
  final dynamic acqPartner;
  final dynamic dom;
  final dynamic bankRelated;
  final List<dynamic>? permissions;

  Profile({
    this.id,
    this.user,
    this.createdAt,
    this.active,
    this.profileType,
    this.phones,
    this.companyEmails,
    this.companyName,
    this.state,
    this.country,
    this.city,
    this.postalCode,
    this.street,
    this.emailNotification,
    this.orderRetrievalEndpoint,
    this.deliveryUpdateEndpoint,
    this.logoUrl,
    this.isMobadra,
    this.sector,
    this.is2FaEnabled,
    this.activationMethod,
    this.signedUpThrough,
    this.failedAttempts,
    this.customExportColumns,
    this.serverIp,
    this.username,
    this.primaryPhoneNumber,
    this.primaryPhoneVerified,
    this.isTempPassword,
    this.otp2FaSentAt,
    this.otp2FaAttempt,
    this.otpSentAt,
    this.otpSentTo,
    this.otpValidatedAt,
    this.awbBanner,
    this.emailBanner,
    this.identificationNumber,
    this.deliveryStatusCallback,
    this.merchantExternalLink,
    this.merchantStatus,
    this.deactivatedByBank,
    this.bankDeactivationReason,
    this.bankMerchantStatus,
    this.nationalId,
    this.superAgent,
    this.walletLimitProfile,
    this.address,
    this.commercialRegistration,
    this.commercialRegistrationArea,
    this.distributorCode,
    this.distributorBranchCode,
    this.allowTerminalOrderId,
    this.allowEncryptionBypass,
    this.walletPhoneNumber,
    this.suspicious,
    this.latitude,
    this.longitude,
    this.bankStaffs,
    this.bankRejectionReason,
    this.bankReceivedDocuments,
    this.bankMerchantDigitalStatus,
    this.bankDigitalRejectionReason,
    this.filledBusinessData,
    this.dayStartTime,
    this.dayEndTime,
    this.withholdTransfers,
    this.smsSenderName,
    this.withholdTransfersReason,
    this.withholdTransfersNotes,
    this.canBillDepositWithCard,
    this.canTopupMerchants,
    this.topupTransferId,
    this.referralEligible,
    this.isEligibleToBeRanger,
    this.isRanger,
    this.isPoaching,
    this.paymobAppMerchant,
    this.settlementFrequency,
    this.dayOfTheWeek,
    this.dayOfTheMonth,
    this.allowTransactionNotifications,
    this.allowTransferNotifications,
    this.sallefnyAmountWhole,
    this.sallefnyFeesWhole,
    this.paymobAppFirstLogin,
    this.paymobAppLastActivity,
    this.payoutEnabled,
    this.payoutTerms,
    this.isBillsNew,
    this.canProcessMultipleRefunds,
    this.settlementClassification,
    this.instantSettlementEnabled,
    this.instantSettlementTransactionOtpVerified,
    this.preferredLanguage,
    this.acqPartner,
    this.dom,
    this.bankRelated,
    this.permissions,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        active: json["active"],
        profileType: json["profile_type"],
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
        emailNotification: json["email_notification"],
        orderRetrievalEndpoint: json["order_retrieval_endpoint"],
        deliveryUpdateEndpoint: json["delivery_update_endpoint"],
        logoUrl: json["logo_url"],
        isMobadra: json["is_mobadra"],
        sector: json["sector"],
        is2FaEnabled: json["is_2fa_enabled"],
        activationMethod: json["activation_method"],
        signedUpThrough: json["signed_up_through"],
        failedAttempts: json["failed_attempts"],
        customExportColumns: json["custom_export_columns"] == null
            ? []
            : List<dynamic>.from(json["custom_export_columns"]!.map((x) => x)),
        serverIp: json["server_IP"] == null
            ? []
            : List<dynamic>.from(json["server_IP"]!.map((x) => x)),
        username: json["username"],
        primaryPhoneNumber: json["primary_phone_number"],
        primaryPhoneVerified: json["primary_phone_verified"],
        isTempPassword: json["is_temp_password"],
        otp2FaSentAt: json["otp_2fa_sent_at"],
        otp2FaAttempt: json["otp_2fa_attempt"],
        otpSentAt: json["otp_sent_at"] == null
            ? null
            : DateTime.parse(json["otp_sent_at"]),
        otpSentTo: json["otp_sent_to"],
        otpValidatedAt: json["otp_validated_at"] == null
            ? null
            : DateTime.parse(json["otp_validated_at"]),
        awbBanner: json["awb_banner"],
        emailBanner: json["email_banner"],
        identificationNumber: json["identification_number"],
        deliveryStatusCallback: json["delivery_status_callback"],
        merchantExternalLink: json["merchant_external_link"],
        merchantStatus: json["merchant_status"],
        deactivatedByBank: json["deactivated_by_bank"],
        bankDeactivationReason: json["bank_deactivation_reason"],
        bankMerchantStatus: json["bank_merchant_status"],
        nationalId: json["national_id"],
        superAgent: json["super_agent"],
        walletLimitProfile: json["wallet_limit_profile"],
        address: json["address"],
        commercialRegistration: json["commercial_registration"],
        commercialRegistrationArea: json["commercial_registration_area"],
        distributorCode: json["distributor_code"],
        distributorBranchCode: json["distributor_branch_code"],
        allowTerminalOrderId: json["allow_terminal_order_id"],
        allowEncryptionBypass: json["allow_encryption_bypass"],
        walletPhoneNumber: json["wallet_phone_number"],
        suspicious: json["suspicious"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        bankStaffs: json["bank_staffs"] == null
            ? null
            : BankStaffs.fromJson(json["bank_staffs"]),
        bankRejectionReason: json["bank_rejection_reason"],
        bankReceivedDocuments: json["bank_received_documents"],
        bankMerchantDigitalStatus: json["bank_merchant_digital_status"],
        bankDigitalRejectionReason: json["bank_digital_rejection_reason"],
        filledBusinessData: json["filled_business_data"],
        dayStartTime: json["day_start_time"],
        dayEndTime: json["day_end_time"],
        withholdTransfers: json["withhold_transfers"],
        smsSenderName: json["sms_sender_name"],
        withholdTransfersReason: json["withhold_transfers_reason"],
        withholdTransfersNotes: json["withhold_transfers_notes"],
        canBillDepositWithCard: json["can_bill_deposit_with_card"],
        canTopupMerchants: json["can_topup_merchants"],
        topupTransferId: json["topup_transfer_id"],
        referralEligible: json["referral_eligible"],
        isEligibleToBeRanger: json["is_eligible_to_be_ranger"],
        isRanger: json["is_ranger"],
        isPoaching: json["is_poaching"],
        paymobAppMerchant: json["paymob_app_merchant"],
        settlementFrequency: json["settlement_frequency"],
        dayOfTheWeek: json["day_of_the_week"],
        dayOfTheMonth: json["day_of_the_month"],
        allowTransactionNotifications: json["allow_transaction_notifications"],
        allowTransferNotifications: json["allow_transfer_notifications"],
        sallefnyAmountWhole: json["sallefny_amount_whole"],
        sallefnyFeesWhole: json["sallefny_fees_whole"],
        paymobAppFirstLogin: json["paymob_app_first_login"],
        paymobAppLastActivity: json["paymob_app_last_activity"],
        payoutEnabled: json["payout_enabled"],
        payoutTerms: json["payout_terms"],
        isBillsNew: json["is_bills_new"],
        canProcessMultipleRefunds: json["can_process_multiple_refunds"],
        settlementClassification: json["settlement_classification"],
        instantSettlementEnabled: json["instant_settlement_enabled"],
        instantSettlementTransactionOtpVerified:
            json["instant_settlement_transaction_otp_verified"],
        preferredLanguage: json["preferred_language"],
        acqPartner: json["acq_partner"],
        dom: json["dom"],
        bankRelated: json["bank_related"],
        permissions: json["permissions"] == null
            ? []
            : List<dynamic>.from(json["permissions"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user?.toJson(),
        "created_at": createdAt?.toIso8601String(),
        "active": active,
        "profile_type": profileType,
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
        "email_notification": emailNotification,
        "order_retrieval_endpoint": orderRetrievalEndpoint,
        "delivery_update_endpoint": deliveryUpdateEndpoint,
        "logo_url": logoUrl,
        "is_mobadra": isMobadra,
        "sector": sector,
        "is_2fa_enabled": is2FaEnabled,
        "activation_method": activationMethod,
        "signed_up_through": signedUpThrough,
        "failed_attempts": failedAttempts,
        "custom_export_columns": customExportColumns == null
            ? []
            : List<dynamic>.from(customExportColumns!.map((x) => x)),
        "server_IP":
            serverIp == null ? [] : List<dynamic>.from(serverIp!.map((x) => x)),
        "username": username,
        "primary_phone_number": primaryPhoneNumber,
        "primary_phone_verified": primaryPhoneVerified,
        "is_temp_password": isTempPassword,
        "otp_2fa_sent_at": otp2FaSentAt,
        "otp_2fa_attempt": otp2FaAttempt,
        "otp_sent_at": otpSentAt?.toIso8601String(),
        "otp_sent_to": otpSentTo,
        "otp_validated_at": otpValidatedAt?.toIso8601String(),
        "awb_banner": awbBanner,
        "email_banner": emailBanner,
        "identification_number": identificationNumber,
        "delivery_status_callback": deliveryStatusCallback,
        "merchant_external_link": merchantExternalLink,
        "merchant_status": merchantStatus,
        "deactivated_by_bank": deactivatedByBank,
        "bank_deactivation_reason": bankDeactivationReason,
        "bank_merchant_status": bankMerchantStatus,
        "national_id": nationalId,
        "super_agent": superAgent,
        "wallet_limit_profile": walletLimitProfile,
        "address": address,
        "commercial_registration": commercialRegistration,
        "commercial_registration_area": commercialRegistrationArea,
        "distributor_code": distributorCode,
        "distributor_branch_code": distributorBranchCode,
        "allow_terminal_order_id": allowTerminalOrderId,
        "allow_encryption_bypass": allowEncryptionBypass,
        "wallet_phone_number": walletPhoneNumber,
        "suspicious": suspicious,
        "latitude": latitude,
        "longitude": longitude,
        "bank_staffs": bankStaffs?.toJson(),
        "bank_rejection_reason": bankRejectionReason,
        "bank_received_documents": bankReceivedDocuments,
        "bank_merchant_digital_status": bankMerchantDigitalStatus,
        "bank_digital_rejection_reason": bankDigitalRejectionReason,
        "filled_business_data": filledBusinessData,
        "day_start_time": dayStartTime,
        "day_end_time": dayEndTime,
        "withhold_transfers": withholdTransfers,
        "sms_sender_name": smsSenderName,
        "withhold_transfers_reason": withholdTransfersReason,
        "withhold_transfers_notes": withholdTransfersNotes,
        "can_bill_deposit_with_card": canBillDepositWithCard,
        "can_topup_merchants": canTopupMerchants,
        "topup_transfer_id": topupTransferId,
        "referral_eligible": referralEligible,
        "is_eligible_to_be_ranger": isEligibleToBeRanger,
        "is_ranger": isRanger,
        "is_poaching": isPoaching,
        "paymob_app_merchant": paymobAppMerchant,
        "settlement_frequency": settlementFrequency,
        "day_of_the_week": dayOfTheWeek,
        "day_of_the_month": dayOfTheMonth,
        "allow_transaction_notifications": allowTransactionNotifications,
        "allow_transfer_notifications": allowTransferNotifications,
        "sallefny_amount_whole": sallefnyAmountWhole,
        "sallefny_fees_whole": sallefnyFeesWhole,
        "paymob_app_first_login": paymobAppFirstLogin,
        "paymob_app_last_activity": paymobAppLastActivity,
        "payout_enabled": payoutEnabled,
        "payout_terms": payoutTerms,
        "is_bills_new": isBillsNew,
        "can_process_multiple_refunds": canProcessMultipleRefunds,
        "settlement_classification": settlementClassification,
        "instant_settlement_enabled": instantSettlementEnabled,
        "instant_settlement_transaction_otp_verified":
            instantSettlementTransactionOtpVerified,
        "preferred_language": preferredLanguage,
        "acq_partner": acqPartner,
        "dom": dom,
        "bank_related": bankRelated,
        "permissions": permissions == null
            ? []
            : List<dynamic>.from(permissions!.map((x) => x)),
      };
}

class BankStaffs {
  BankStaffs();

  factory BankStaffs.fromJson(Map<String, dynamic> json) => BankStaffs();

  Map<String, dynamic> toJson() => {};
}

class User {
  final int? id;
  final String? username;
  final String? firstName;
  final String? lastName;
  final DateTime? dateJoined;
  final String? email;
  final bool? isActive;
  final bool? isStaff;
  final bool? isSuperuser;
  final dynamic lastLogin;
  final List<dynamic>? groups;
  final List<int>? userPermissions;

  User({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.dateJoined,
    this.email,
    this.isActive,
    this.isStaff,
    this.isSuperuser,
    this.lastLogin,
    this.groups,
    this.userPermissions,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        dateJoined: json["date_joined"] == null
            ? null
            : DateTime.parse(json["date_joined"]),
        email: json["email"],
        isActive: json["is_active"],
        isStaff: json["is_staff"],
        isSuperuser: json["is_superuser"],
        lastLogin: json["last_login"],
        groups: json["groups"] == null
            ? []
            : List<dynamic>.from(json["groups"]!.map((x) => x)),
        userPermissions: json["user_permissions"] == null
            ? []
            : List<int>.from(json["user_permissions"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "first_name": firstName,
        "last_name": lastName,
        "date_joined": dateJoined?.toIso8601String(),
        "email": email,
        "is_active": isActive,
        "is_staff": isStaff,
        "is_superuser": isSuperuser,
        "last_login": lastLogin,
        "groups":
            groups == null ? [] : List<dynamic>.from(groups!.map((x) => x)),
        "user_permissions": userPermissions == null
            ? []
            : List<dynamic>.from(userPermissions!.map((x) => x)),
      };
}
