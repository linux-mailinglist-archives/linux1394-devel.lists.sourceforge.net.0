Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F0730D127
	for <lists+linux1394-devel@lfdr.de>; Wed,  3 Feb 2021 02:59:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l77SH-0002dh-5W; Wed, 03 Feb 2021 01:59:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=6617b4f9a=Chaitanya.Kulkarni@wdc.com>)
 id 1l77SF-0002dW-K6
 for linux1394-devel@lists.sourceforge.net; Wed, 03 Feb 2021 01:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QUMQPSBi2sLU91/de0d++pF3GyS/vlWVAYqkhv8nDFE=; b=FCBZYhDszvxgKSYqZZRBchNuS6
 tvs1/MazZdx9X0sadA8IoTYMwYn7I3vBFc5du0yoY0LFP5C8GGWHjz+xX+QWqXokiKXPYWzBdwQfY
 ibPpD+Y3twTJ5ATVo8l9vzH0NGvL1a+C9rDq1n309T5AxRdgM+hiN4EJM9jGE48AruA4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:Message-ID
 :Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QUMQPSBi2sLU91/de0d++pF3GyS/vlWVAYqkhv8nDFE=; b=M
 k2zWSv9QqvCSUl9/oVo/zs6VD99g/SffQ7/aOAj4DKYsUPfssO9HaCLm298PDzqt7+vZKDOBd9HyX
 f01pSjXWy07HpYpjRMJ6NhCvaAIBgQ/8XpAFnve/wM9KUQwabwk42kQ16Fm/7UVTq0fwd0Qd4ojj4
 7X+gX3VZyijtE0Xg=;
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l77Ry-00016i-71
 for linux1394-devel@lists.sourceforge.net; Wed, 03 Feb 2021 01:59:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1612317561; x=1643853561;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=uxXbMI2E5WDwxq96Tca2l7MQ4DAEVwe2XOLT5Ag8oV8=;
 b=PDsneIoqEmF1RzEtOeOArmxajBVlgsAEDHAJ3p1FZ+RMIcwLIKVa2NdI
 XxwSxdtY3H8pAySTQisxgYsw25I9SMfbQQRBF3frjrdLmR6BscCJ0GjnT
 +cZ5/Ni0n/mqVSXezNv6ZaKxHmKZUdF0jAPqKmhzSWEGCBd2FFjaUbUMG
 +JG0+ZYF3l/PusYZd02lD2HLH6SsVwrm0dzTg3QC4dbCbsNHAKvopdSDh
 t7TL1k8D9oSpmf73750CCc/xyUdwhqeLXazbmJ6x80W9DD88Eaak82ByI
 5Z5N7O+oVNumrOzmL7jThLL51pOGnUxs83lenIEv/6qPnTDQ0d1Lt/XTK Q==;
IronPort-SDR: K+tqasg/mM4a9MWJlbtevD/rNBIsCW1PMSOABeu1QQjuS7xmOUaCuoEmCZMU47hqymhFHYFYyG
 EZGSvygdgJKMdhN9BQ5gz6AtT2GjR9A/2FtmL4psHtvvf/TR4oMWh2HPgBlrdu2HhBiPs00crU
 FGQQgH+UWCRGA0KJzLa3WpNRLDN47PyP693tEMQdyqLs7nJoIfKCDZMn1Rv/MuiZbFnAJ/HH6N
 FCjxPV154B8kGnrcFUrNcjRZH5CiAEkhlkogayCfUGSZbvhYTOUbHvk50AO7RhHIv0Dtvq7ylH
 X2o=
X-IronPort-AV: E=Sophos;i="5.79,397,1602518400"; d="scan'208";a="269400917"
Received: from mail-bl2nam02lp2056.outbound.protection.outlook.com (HELO
 NAM02-BL2-obe.outbound.protection.outlook.com) ([104.47.38.56])
 by ob1.hgst.iphmx.com with ESMTP; 03 Feb 2021 09:59:08 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C/odfiEBKgrzueZYsKGbX7TbbmLGLjeM0Gisqbw47LJKxm0u+nXD4JDjf6o2827UozKNPyWLxL7vsMABWKY7jLc+KwrCfhZD86CAXMvI/ohYgYUckz7qGjo0dNqOuSRwXBCqHj0w/xKg3L2bih1MdV8fUraSY1JiiTDZ19O63SQhMZaSpzpZUq2CfHz2U7Ce2cHQXhSxX0y7pR6vYjXwZ3E9j98QITxXJtNgiV/tFrGOQY94DKc/1eG9e7VtpuFSJMkp6EHRmg2CBveNPRkzDaTCmaX4VNyI9gBmMTTHQ51FIeUgznz7bRBALQ74YiGJ0E0AEJYmz/fDzB5p0j96Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QUMQPSBi2sLU91/de0d++pF3GyS/vlWVAYqkhv8nDFE=;
 b=mIrQ8lYkfGiGtx7bIo5y1szvwyplRp+LSBcJcQ//r3Wc0u17VXWvUSBVFvuxXXHvZ3d9fKZr3YDNc1vvd0x22bUwl/G90YYTAcouiD2UDB2lSu7mEyI3bLuX5T7vGQyVtNuJe7l7Cb1DGGIsrAvKe+H+WPCRdqPqynoz5jwDHFnq+e5B8Vi+quSYs2jQitjDtVbp6Inm05wFDuRrtQ6VwQnLttF1ywn/naTYm4rVQHr4LzbzqFC+7HHHQkf685PP0qkOzisinlFkgi1CbyN7beG9tLWYnMq0rAV7yddUaCWabY/UyKqdNDsEmxyIYPu4/p61+zjy2MYnnDZJgJa+AQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QUMQPSBi2sLU91/de0d++pF3GyS/vlWVAYqkhv8nDFE=;
 b=xsZjIii/ty8aPg6DIqmM/qn994QoxqZY7rUQUbBlShd82f08oF0sQyCyoF33ez4keNV0UQ5CZmMV3QQ900ZoA4p+3z9m+SVwiIrreiirmKRN1llvfBPYMvIf5QdbXaeNB037LZX6dysOaRmZbLCvn13RBsYxtl/EHyQqtK2s+00=
Received: from BYAPR04MB4965.namprd04.prod.outlook.com (2603:10b6:a03:4d::25)
 by BY5PR04MB6884.namprd04.prod.outlook.com (2603:10b6:a03:222::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.16; Wed, 3 Feb
 2021 01:59:07 +0000
Received: from BYAPR04MB4965.namprd04.prod.outlook.com
 ([fe80::1d83:38d9:143:4c9c]) by BYAPR04MB4965.namprd04.prod.outlook.com
 ([fe80::1d83:38d9:143:4c9c%5]) with mapi id 15.20.3805.024; Wed, 3 Feb 2021
 01:59:06 +0000
From: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
To: Yang Li <yang.lee@linux.alibaba.com>, "bootc@bootc.net" <bootc@bootc.net>
Subject: Re: [PATCH] scsi: target: remove unneeded semicolon
Thread-Topic: [PATCH] scsi: target: remove unneeded semicolon
Thread-Index: AQHW+c9A5bXj1PnVR0+iIAmC7knhuw==
Date: Wed, 3 Feb 2021 01:59:06 +0000
Message-ID: <BYAPR04MB4965F66355867B5B001C820186B49@BYAPR04MB4965.namprd04.prod.outlook.com>
References: <1612316992-71443-1-git-send-email-yang.lee@linux.alibaba.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.alibaba.com; dkim=none (message not signed)
 header.d=none;linux.alibaba.com; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [199.255.45.62]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 8126decf-a217-43fa-1bdd-08d8c7e74a3e
x-ms-traffictypediagnostic: BY5PR04MB6884:
x-microsoft-antispam-prvs: <BY5PR04MB68841E30996A56FB2C5144D286B49@BY5PR04MB6884.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:626;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qiRZw3FugSgBGsI10MNtEsvldy1mAycQc89LntF+vRnFt9XCOib614NKPqKXjVEOC91kcOCeo5H9Z3kMM09JdM3e3hdMR1O6BmeZRSJ6DRLlDYVT7aKROmAZJidsGt1S+IUzGVZJ3eZl0jes74gHNH2EMLhFWVW81fOXxYdHhdl8Q4vMhhMmRdpTf3itly4qkLZFSAdPPAFfwxLTnbmh0JVgdjbXnnPvyVrTzVIDHgI2slpbZR7+2FzYLIibR7RLft0FdplHLuuGWh+qkyHCZDIOxNtyN9l2Adc9TyFb19yhAPj6ufNY6MfGRouVtLuBS85K8guAAwqdbqA+r3B4GNPo0OmQZKH4AkTPYcAqYU35ZtEz0EZrx68BAByiKQQOr8GD1cq69NiflcqAv/BT5sIz/cPgW0nThu0EwuLvqn9Cc11NKsUiSlOAWJp1R5F1cAdPVBJQGWsU/H/ou+XayFcuDN2BWxaG5HG5XJqUGIGqtUHNk4/V3tUMrP/PR2tHBgPAeiXCIqX0zDlSlLazXQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR04MB4965.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(396003)(376002)(346002)(136003)(316002)(64756008)(54906003)(7696005)(33656002)(110136005)(83380400001)(8676002)(478600001)(186003)(4744005)(9686003)(55016002)(8936002)(71200400001)(76116006)(86362001)(6506007)(53546011)(26005)(5660300002)(66476007)(66946007)(2906002)(52536014)(66556008)(66446008)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?ALHePVP6xz3rsu1crIiIIUg13yUhSmSJ87HF7ZyJHp9Sn1ejTgSPluAc0aKN?=
 =?us-ascii?Q?OiJ3mzXPUWXtCPAFOKFLRJSqSGIG2/TXeUync8ghThR9gsjk0XB/L8miAx/+?=
 =?us-ascii?Q?2tYj7v9bGeXjeYXs/DxixHki4022bJJxmk0D95oujCnk0ZCoGq++E0O2oBkO?=
 =?us-ascii?Q?MkMnEOlwNLrdCKSfsMqUTO5bWMG+XxOFPsFCUau1rNxdCX2wm0eN6UVy+8hi?=
 =?us-ascii?Q?rpLrbuqvrF6ZVfu8n2MXOK66vzJJ9kxs2vYgIR6sDvEMW8jcYB3i9YGYDD19?=
 =?us-ascii?Q?lAO3UW78mcPSHu2Lx4GHQRyVTAzKPDGFaHXfbTOOaZQxIwRnlkiIwh3i7b63?=
 =?us-ascii?Q?CK3h6I4ywZD/vQruAj6V8esZxfnEpU4UJdgqoI5dgctB3BWOdQTIdDUULWuY?=
 =?us-ascii?Q?H/DzAxPYR6u4/mTznDSAkNBq6r28TqJMsX3Xm1R0Me3NRWI8eMw0IKn0CKkm?=
 =?us-ascii?Q?VbJbg300uqNMK34pJI1iVWMjDDg4CqqPGub2sv2WJWC3c1BA1ZfeFjrLFLXK?=
 =?us-ascii?Q?G5x3BnGq4Gw4mvJ0F7gy2OZsXIw8NXEXow8+hGyRgzDzjTYOkGz3Y4Cz6lSg?=
 =?us-ascii?Q?mMtZg3QIiflscKeRomsNYdJ70GoF3BfTglgyhNhVLoEoeHa9FxgR5ocHkWGB?=
 =?us-ascii?Q?ah/z7ZowIKPpqfuPzdL4II9nVq2X/Uz0ZW4oHQPBZfNEd3/UT4EJ+LJ+fdTd?=
 =?us-ascii?Q?h2vZOFvXSsJTvUa3XE1EVlr3HexRTCZuw18TJizklqAHf0uBEsDJ90s2KurL?=
 =?us-ascii?Q?DRfnJBvb3LA7oOPKr6AxwbqVcW/ChCWkxZZqCGxwC2gAMvrEDyo/tLKLzd1m?=
 =?us-ascii?Q?xpMZTNv7ArGAAd743DRHgOrxzdRxHAm5zzrFH1rR2r8CRq2ELdn4GT1tplAi?=
 =?us-ascii?Q?H1RF57cst9id5TqNg3X7hTd4LNSRYNW9kAYiaxqcr0Lsz7A1UF3EodpJEN3I?=
 =?us-ascii?Q?SUNc85pUVBaGy7jkBDXb63KVPKjtpC75G839Ju7Zf3Y0IOHyZsT1ycaRCetc?=
 =?us-ascii?Q?nldYruMhT6JxuslsWBD4F8ul/NbjXD822DImLTA+Axd6RpntV5zv2CMVOQGV?=
 =?us-ascii?Q?ufeTtL/7OqQ4qeNaeDU0NLW2sTEUgA=3D=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR04MB4965.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8126decf-a217-43fa-1bdd-08d8c7e74a3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2021 01:59:06.8463 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7jMnCI5g6sDVepdj+y4aOwAEtfh6wgJKkU6RGnoptBRnd32yGrdXhNffBmPST9QhKDkBQTzkDoWA1J7nE/oZH/QHlbeIKc+pJRrpxhPNdwU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6884
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: wdc.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1l77Ry-00016i-71
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: "target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
 "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On 2/2/21 17:52, Yang Li wrote:
> Eliminate the following coccicheck warning:
> ./drivers/target/sbp/sbp_target.c:1009:2-3: Unneeded semicolon
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> ---
>  drivers/target/sbp/sbp_target.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/target/sbp/sbp_target.c b/drivers/target/sbp/sbp_target.c
> index e4a9b9f..2a6165f 100644
> --- a/drivers/target/sbp/sbp_target.c
> +++ b/drivers/target/sbp/sbp_target.c
> @@ -1006,7 +1006,7 @@ static void tgt_agent_fetch_work(struct work_struct *work)
>  			agent->state = AGENT_STATE_SUSPENDED;
>  
>  		spin_unlock_bh(&agent->lock);
> -	};
> +	}
>  }
>  
>  static struct sbp_target_agent *sbp_target_agent_register(
Looks good.

Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
