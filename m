Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7E6446007
	for <lists+linux1394-devel@lfdr.de>; Fri,  5 Nov 2021 08:08:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mitKX-00080u-4Z; Fri, 05 Nov 2021 07:08:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <cyeaa@connect.ust.hk>) id 1mitKV-00080n-Fw
 for linux1394-devel@lists.sourceforge.net; Fri, 05 Nov 2021 07:08:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ds3Xe4xE/9muukLrWL3cm7Ypxz6nMaeZ1wdgdUk9INA=; b=gqQPnul+iNcAdAkUDT0B5VySHz
 bjVdz+tk432CBbIBDWxiOgsrmQQUDc0465BJ9CGoF8jQl9JJrlcUs+ckQDtGdJ/Y2uHkotBFDm33z
 TThQau0u/S/DexJpYSj8eXbjwUw3SLEqBP2TAmNFDb0lY15g9cSahFiTXgcc29S51Fgc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Ds3Xe4xE/9muukLrWL3cm7Ypxz6nMaeZ1wdgdUk9INA=; b=B
 AwNPf8oPEUMchoI4ir6391TB76bM6ij/kIl6bjNKUCqi4h1TIdzGOaxyuRqVbdbJFxZPz7FU42cf9
 oqsRUdAnfZ2izj4cGIi9X1dLCz5cSsxChUncmFwHgNjPf9OKGoo2e8atDeZoI2/T/RSfPWAPUo/mR
 Xvi2BnWSOwkRTMLM=;
Received: from mail-eopbgr1410110.outbound.protection.outlook.com
 ([40.107.141.110] helo=JPN01-OS2-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mitKJ-002HU6-LD
 for linux1394-devel@lists.sourceforge.net; Fri, 05 Nov 2021 07:08:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m/XZQ4anszKh26HiOxKLfl67+QJmTkV+lenCGA3HOboNNSG20ZNcxbXGK0FaR++46w3fqGCtgFZdIMx6wzr09bT7kRyi/Vy7soTPpn5tAma/fjLXVZ9pZFtQjWdffN/BDMDAv2xtqjc/luNRQHJeYSVs8kwT8VZrG8jh8/iIvTavUOV/V6zVJX4fdJJTfL3RaC4ZPuZoL2TnBaqPpHGYBCiJjtPOWia2rBO9XDsbNh12YMR1pyjogWuKj4j6c9EShxEDxctqBMJAMx8t0E0c9HvvQbD1s6U5Mh7HXjK5vMdDXDFZwuid7RJ8/M64Vt9d62SU9zm2r7QPr19SMW6Hew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ds3Xe4xE/9muukLrWL3cm7Ypxz6nMaeZ1wdgdUk9INA=;
 b=Gze+2lOcijRlIfqv71iKxRsH3pnhRHht4LGikV6V01GVlyXxv6lTzFvTI5zV+ACsWQw67My+igOAAb/oAawRHG+EHzvp3zjflck3bKXIAL2iMvqh9BxhXu6OP87Fj6JStxVvs0qdF6gmVv7UWIkhpyYifnh0Amny8HXS8cBOlFaA3mB/+NQcXJZ7PbiX0Qk6o7VdS+g/MyxY2HTVJFRH88/NSq5knaLYP8qeua2tdno01J8It78uKkxg5PIRoSXXXR4a7TlGdEJeOwPMX0PHtdGZmFELfILzEcj6UgNobnyh6ZzDWhRMFTZQaNsJoXvuMqEWWB9nD+t6Salb0mi5wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=connect.ust.hk; dmarc=pass action=none
 header.from=connect.ust.hk; dkim=pass header.d=connect.ust.hk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=connect.ust.hk;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ds3Xe4xE/9muukLrWL3cm7Ypxz6nMaeZ1wdgdUk9INA=;
 b=L3U47eBhWrC4mhxVkmJAG2y9DsOv3sMWZRrJd0B6sPN7HTclCx00+7hGQKsztNlgJoTq6zwF7MVkNV+jcqTOsODohWx2Nla1/3hPxg/PoBFCCciYYeN9lJXs60avsNwdFpbQKI4PNWNCdtsZjSiP4UfjwyyR1yqkuWInlY42mUI=
Received: from TYCP286MB1188.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:b7::8) by
 TYAP286MB0442.JPNP286.PROD.OUTLOOK.COM (2603:1096:404:8037::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.13; Fri, 5 Nov 2021 07:07:43 +0000
Received: from TYCP286MB1188.JPNP286.PROD.OUTLOOK.COM
 ([fe80::c0af:a534:cead:3a04]) by TYCP286MB1188.JPNP286.PROD.OUTLOOK.COM
 ([fe80::c0af:a534:cead:3a04%6]) with mapi id 15.20.4669.013; Fri, 5 Nov 2021
 07:07:42 +0000
From: YE Chengfeng <cyeaa@connect.ust.hk>
To: "stefanr@s5r6.in-berlin.de" <stefanr@s5r6.in-berlin.de>,
 "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: firewire: suspected uaf issue
Thread-Topic: firewire: suspected uaf issue
Thread-Index: AdfSE2Y8PWxJkaikSrSvFCtkAX2o8w==
Date: Fri, 5 Nov 2021 07:07:42 +0000
Message-ID: <TYCP286MB1188FABA20A0F8F3C6498E538A8E9@TYCP286MB1188.JPNP286.PROD.OUTLOOK.COM>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: s5r6.in-berlin.de; dkim=none (message not signed)
 header.d=none;s5r6.in-berlin.de; dmarc=none action=none
 header.from=connect.ust.hk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6a438bb-6918-4ca4-e99f-08d9a02af624
x-ms-traffictypediagnostic: TYAP286MB0442:
x-microsoft-antispam-prvs: <TYAP286MB0442559DFCD0728F22659C218A8E9@TYAP286MB0442.JPNP286.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gYvZt/lKcJbYQUhFxhONir4zLIQMIg6lkDSPmcibnDmfRY6pVrVDs7Rn0LgsalTOfcw2cR2OlCMzECc9PHXw89wr5yROJe3kGOFO55RGf2FK32otfHHN0+DwiLLhbaaQShpmnFcSibLTiJWNPy+ptEXVO/F6wwQCYP3uXlaQbvXK6s5gDy4tGNwGvPRHglX7sRTlNopP9XlNaC8M5iUnFLueHPfi5sdSABzK6Btqx2TtQ8/eXnvvaZMK+SFFpNYKdvlSzl5lRojKP2zEU4XLEJ7W3+U458924FVY/IZBWikaStOU8JXxC/vhjsfPvL8wua7TX4paGHq9EjyFTRywHrmnqiy+o1oV0Aibl9NCuSTIRGCoaVuyoNcvHD7eFqh/mNC0kT3MDDl0Zm4vnIwgfEpjOzPX9d+/DZZoTL9dTVazJWC+1y56TFKLqAtmAWrkC3s2tjOfdBsyT6ZXWGiitjLZn7IW5lwve/G5sDYKWPWY50fMKyqRLx/H1cNvACifQ0qDmf5XrufEzw3Kfq7rq7JV8/YpedtEYdibDvdtHZQycxAXruYX0UCYG9uRB21Fk9nG2naHExk2e5ClQephuDsdrqXxIE9cszABmvfvnQofs8wxkbg4brcfTDrAypVJr4QgHYTMYfIrqQzUcIJKqG5mVnE4SohUR/lluYmrcg9k7q3N8Qh0Hxl+5hetCJC5JHPXD1Aq0oDrywI0+g0duENUssGDwme2qWzehVF7xezwBCS452tYwZ5hbcMgmYZVJuNuzBNzjpUgztYq0mabrIjKcy+MahP46Xj1OW/xeuY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TYCP286MB1188.JPNP286.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(66556008)(66476007)(5660300002)(66946007)(76116006)(66446008)(64756008)(38100700002)(52536014)(86362001)(55016002)(9686003)(122000001)(38070700005)(83380400001)(110136005)(71200400001)(33656002)(7696005)(316002)(8936002)(966005)(2906002)(786003)(8676002)(4744005)(26005)(508600001)(6506007)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lJmvY8iest0+jViEmSh8/jAKsTyM9Bwd4m98e4bo3A3yDVJrGztt7cdizyuo?=
 =?us-ascii?Q?4s8sfsHGw/dj49XVZV3L1NDhdW4DtSWQDVQjl7LbD3YzXc3e8hbx5mK2+ASt?=
 =?us-ascii?Q?fE5cDjJh64wffkGDg4bkgGiRaZ8t5dm9nUGxRHenROzEMvFrkevTAh7lNurb?=
 =?us-ascii?Q?WTKdZHKOaloEmNe6Zo0TA18knaPPipME47ZllQSxwsncsJcHp2J2uPyBmcPP?=
 =?us-ascii?Q?WaCSTFF3NHPkc42p6T3eeoufPfHuqoXcTltWsVhtOWqBS5v0UrgwuEcdwcLT?=
 =?us-ascii?Q?J7RNhJwuz/NNpQfzXmdfbtpt+NdepIwn532EVwgy+W/z+LTZA7DBpu/YgWlE?=
 =?us-ascii?Q?9JnZAndkgfjH3EefhQCXdVA0CfPBaLk/ahJFxsW1cIItyQeNipcMB/X1BGRu?=
 =?us-ascii?Q?gpi/7r/0pSVy4cipv1sPpPTIVgJUHYQHuECYjFDx9Q40d3/8ljr+S1E5SkKm?=
 =?us-ascii?Q?k30mnBU8gzCt9IMcprFxP2EWx9DZwayRNq397vKNoGO1mE3EYcYobUVxtlCt?=
 =?us-ascii?Q?Sw6DDPfvLseUFS46Rs/RTF9zzErx+FlyuiVefMbaFA6Cz//dTbj5Ql3/3qVH?=
 =?us-ascii?Q?TBnZKy0g2VBNPE/BaxNkw1sZrJBU5uneI2rMiFB8pgazQkduzJGmeWwmriM9?=
 =?us-ascii?Q?5LElcJrFdWwbYamE33VNP9KYqmGvTuj7MyB4NPgaG9qb9gmJYQ4MI+81Q5xB?=
 =?us-ascii?Q?hStL7HkJ4Y1QIkif4Amb9wVXp+N7ZJUDoeuTDKuhHz9LDZabvlyZh90UXA28?=
 =?us-ascii?Q?Yf0gsEFB7eGCp5BN04ZgTrG0Jbx9Llhc2z9hLsHpHKK6j8Pe5Z2su4UqwiZZ?=
 =?us-ascii?Q?EfI+otwSaLUGGngxgao0CYHPA/YXR9+FIYtO2Xciw30y74R7MeGupYtuVn0a?=
 =?us-ascii?Q?PkKHcseqZ5CZ00lzfmJD8MJJXcWD5ohMnHzAgE64FPRVq49P/FAWUWiG9GGR?=
 =?us-ascii?Q?I2pndy1gq+3mCzH8hzNZCwgExDn8MeU4JWXdYFNiZZRt7hTurBGZ3sBQcP1+?=
 =?us-ascii?Q?S2eMi8Dh8PStqOI3wUMH09/emm8y3Ip9+/pwcB1LPgqHmhZLLPM7LnTJf5/p?=
 =?us-ascii?Q?mjX+ZFzwjYM1j29zwe+QNUayY5P6dTqNwkmlfY79ZCLY0Ug0HSF0TaKi1WiZ?=
 =?us-ascii?Q?YeEWy9vruRQqV4s1OFwzyQXPNbT8z35MQYoNCrKoDSTnHrV4eEjJJFm7pf+O?=
 =?us-ascii?Q?N8XCTf8l3iqBmAsdJMaGwDm2vFJZfChVpzej+ptX6CII47p/7nDnL4SU2gu3?=
 =?us-ascii?Q?s3d6a0Exm77nTHPqfJSbSEBdQSZ+yJJb+A6y/gEiVAqSeITK8tCG8+2GH4DV?=
 =?us-ascii?Q?7Vklbhb6Sc6p4RCV9Sm4WHuEaiqLnZNKC0jG7zrAClRwPDPcCoPCbGhWxamR?=
 =?us-ascii?Q?mIgd1KmMaaWr5e59LkJHP5B5mE3dgnCBGM5dgM6FM+fV8y8FFCB7jOA9HSjd?=
 =?us-ascii?Q?e63avG175H2YbuewT0jgWXoY4gZaOggranv9di8BdSUeA+Jgy6PaYQ4jAtfM?=
 =?us-ascii?Q?smOjHSZnbxOvaRGhcfjziQcy5+YcmcqScuXln/VEH1PHiCxB/jNyyupmu9sB?=
 =?us-ascii?Q?IEqMkNPRQEiR9yU5FVjKAmbdm/+HbmcQ91JvnNn0wDcSGk4ejlIkLb/HO/p4?=
 =?us-ascii?Q?Xg=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: connect.ust.hk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYCP286MB1188.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e6a438bb-6918-4ca4-e99f-08d9a02af624
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2021 07:07:42.6269 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6c1d4152-39d0-44ca-88d9-b8d6ddca0708
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: berQf5fi0ceZ0A2IInALf7X7jmIG2Kxp623Ratz/2rIpIi4B07e0E0XZ4LTLHsOdGjiYe7zHTAiELzroo6JgtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYAP286MB0442
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, We notice that after client_put(client); at #line 1316,
 client is dereferenced l(e.g., #line 1318),
 and we don't see any client_get(client)
 like statement before clientt_put(client). Could it be a uaf [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ust.hk]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.141.110 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.141.110 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mitKJ-002HU6-LD
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

We notice that after client_put(client); at #line 1316, client is dereferenced l(e.g., #line 1318), and we don't see any client_get(client) like statement before clientt_put(client). Could it be a uaf issue?

https://github.com/torvalds/linux/blob/master/drivers/firewire/core-cdev.c#L1316

Best regards.
Chengfeng


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
