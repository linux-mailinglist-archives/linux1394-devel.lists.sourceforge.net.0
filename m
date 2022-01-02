Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 53199482C98
	for <lists+linux1394-devel@lfdr.de>; Sun,  2 Jan 2022 20:27:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1n46VS-00075k-MN; Sun, 02 Jan 2022 19:27:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jc688@hksfbsi.cn>) id 1n46VP-00075W-K3
 for linux1394-devel@lists.sourceforge.net; Sun, 02 Jan 2022 19:26:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Date:Message-ID:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qs+pwG3W2Ri/bIJEEvO8YqQnF+9tIaUVxVzo1OieSlI=; b=DUtFQJq0WcE0jl/Zp1Fj9HqIeW
 Qpj7/pfHuhOSHA44Z1vWqj1Fp/j2b02TONHS1+WPduJGCO7iKUqjg1mu5G6Z4vs9wD1S3PDnTga7l
 BspRyafuarXZXDuDOufzsFLndfa9VCMf6RhUuf7RpZs4fphv7+a5CKKcIjw2vnxLjcxg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Date:Message-ID:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Qs+pwG3W2Ri/bIJEEvO8YqQnF+9tIaUVxVzo1OieSlI=; b=n
 IO4oqc7HvlXNNE9wzQw6dxyDHqcvdPXirfNc75SKabzN+zSeEdAu9iI12oggNyiEGRBWp6daQ6fWs
 T59BLQyvTFE5onFfahWOXrVxbv3mqLim9WuN/bsIw0ZHXfOS4r05qxm/fAFnGOQXFHrA/00QI5fQr
 gXdF0FbK2zV8Am+A=;
Received: from mail-dm6nam12on2116.outbound.protection.outlook.com
 ([40.107.243.116] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n46VK-000235-Gh
 for linux1394-devel@lists.sourceforge.net; Sun, 02 Jan 2022 19:26:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JgTKecVq6j3Cu8a6J/EIHRSDo/pTfgcTxSyjGQr1dqsXwl1haZvatO2VWYzMPcysH847DHN/cBHlQLnoStDgt478RFO1XbFwmnrEmFT4AlqyDymRiU36QyIRnFeXw7qyiICnwbFMxibytPrt6jtSqVQ5n3T8opOPR2DxsX5komugBOhcgV/lUsAUKPzVaHdw7mf5nz2vWlwCk35mhHN++tEquYpHp91MKMl5soDg4V26Ei0UfpuzRNzmvyLttfQ15Sk8KoEwUleyptyiEPXlhN+PvBgXOiqhgziVeZ2vv9MphK9gXZEjfRGGWO6d6iwQSIievyN85jNrmB1HOycDxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LVFhLHk11hCIsspHYbZpXgDEMPXJkkBoVMFQH6VbAy4=;
 b=TmZLBlN1ybAD/tznMK28lZn9bmLr/I7c1h80L1tIoYboBZb6U/u6uUMmr0iMzYu2tx72pi8De4CmwiBng9fPMv8OZ1yhCjRu8xdUx9ImUjvIvs/u5dHDJbl9PDpzf4/6Rz3RHFkW+HlaMDtR9z9yaahuNDdO5M6c1b3Jz8cBBhJgXEmUD1xm8l3Th1jykkupzga8zEAmw67Q02P+zctyT4ubT7Rjx26rB4lwDu73jV9n76/jkIC2XkSurbO0csp7paWwoyH6vnSCxir7OZtPsle6hwbqvBGQeHu6dY9lfa+SOpQKaCDPgLykRcfwgX0LrS/Uc46BUvKHgzRTzF5B0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hksfbsi.cn; dmarc=pass action=none header.from=hksfbsi.cn;
 dkim=pass header.d=hksfbsi.cn; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=hksfbsi.cn;
Received: from DM6PR12MB4282.namprd12.prod.outlook.com (2603:10b6:5:223::10)
 by DM6PR12MB4714.namprd12.prod.outlook.com (2603:10b6:5:30::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.15; Sun, 2 Jan
 2022 19:26:47 +0000
Received: from DM6PR12MB4282.namprd12.prod.outlook.com
 ([fe80::cca:92c5:7021:c66d]) by DM6PR12MB4282.namprd12.prod.outlook.com
 ([fe80::cca:92c5:7021:c66d%7]) with mapi id 15.20.4844.015; Sun, 2 Jan 2022
 19:26:47 +0000
X-Mailer: ngeBdyskeo 8
From: "=?gb2312?Q?=D5=D4=BD=F8?=" <jc688@hksfbsi.cn>
To: "=?gb2312?Q?linux-list?=" <linux-list@lyris.tucows.com>,
 "=?gb2312?Q?linux1394-devel?=" <linux1394-devel@lists.sourceforge.net>,
 "=?gb2312?Q?linux?=" <linux@163.net>
Subject: =?gb2312?Q?=BE=B2=BE=B2?=
Message-ID: <53a5d031978bb1e676f754af1983f218@hksfbsi.cn>
Date: Mon, 03 Jan 2022 03:26:32 +0800
X-ClientProxiedBy: HK2P15301CA0008.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::18) To DM6PR12MB4282.namprd12.prod.outlook.com
 (2603:10b6:5:223::10)
Importance: low
X-Priority: 5
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a519884c-5f28-453f-2e2f-08d9ce25d14e
X-MS-TrafficTypeDiagnostic: DM6PR12MB4714:EE_
X-Microsoft-Antispam-PRVS: <DM6PR12MB4714B3F3C8864326389DE3CC88489@DM6PR12MB4714.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3kcyyUSlH1+CwxbVIxS5V5oo4Is+Bg6nunC8OOsQx4O1Dhemy7utvXMZWSJREW04YhQ5+LHd/Tn+dd+okAyCrVmFL9BSDNv6iubK4bp4KRBlMqpBZbGjswFLeUAjRYL7kDRaSROP+6X9CauNMteqD2alfCIa110FTtzTB7WHonWUQuLgfkIgeguhvYyjR5OmcsR5pgM6H8UL8taoHLrP12Djg9GJPMLBrUmC6uT4nheoF3Xlle3mfXqHOuiiFqzE1fFeYqBlRtkVVBsR4WrrnM1ShDOlQMCwPEp5mT5aJUWtztIbMBIxgxKR92fE9/oktmukIvnhFJdWIIIvK2veZk/qgBJ9198f/YTl8xDsvR2Ug8cKQu56Re/fb+Uf3YWODz9c1Q7x1JRbPLhCx9GrudLXEDHl8agBSrhUChKiH8TUBfu+4O7OHrLQ9T2ytJl7himQU18V2Rq3655UV28m5qKjyIRT2SnQCAXgVAVJ65kRbYmlcm2pTgzGHW5Jrm3BfUkaK3/PxqKOI5PfauSF9k7qFD9pPRXG8CW6xdGy8eAEfXjwuTfu2M6geNH8VXqk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:zh-cn; SCL:1;
 SRV:; IPV:NLI; SFV:NSPM; H:DM6PR12MB4282.namprd12.prod.outlook.com; PTR:;
 CAT:NONE;
 SFS:(346002)(396003)(34096005)(39860400002)(376002)(136003)(366004)(448600002)(6512007)(8936002)(26005)(24736004)(224303003)(66946007)(2616005)(86362001)(110136005)(36756003)(6486002)(2906002)(6666004)(66556008)(5660300002)(558084003)(52116002)(186003)(66476007)(786003)(38350700002)(38100700002)(6506007)(108616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?gb2312?B?ak9SMVI3cS9yOG1uYk5NeWZ0SENCampZL3d0NjdLUVFIdWhTN29RcGRTMm9v?=
 =?gb2312?B?azE4YWh4RENxb3l1MmNxcXBiNG9JNklIQ1luRnJZd2hRQkdmYXBIVXhmOSty?=
 =?gb2312?B?Z3JvZytZU2thTzhicUNWVUdQd3JBVW5WYUtGZlB3UEQ2VjVZYnN5VEZFK2t2?=
 =?gb2312?B?OGZZR0ZMTWwySGhPVzc4dG12U00xUTQvSmo3K09EZmJJRnZPWDIyN1VUYmFO?=
 =?gb2312?B?REo2UUxQa3FPMkVnSEJVa1pERmsvVDc2WmdzdEUwck1wYUlTSHNVNE9ZL0dM?=
 =?gb2312?B?QVkwSFQ3ZXJFdFFnR0xRVm1HSkxicVFQOGZLVmY2enNDT1JjdmpjbDZjTHUy?=
 =?gb2312?B?S2NydDNNU0dZeUFmQ0dqQ29mUzg1ellvUnE3cmtQT0ZERS9vZk1QVERMclJV?=
 =?gb2312?B?eFBmcHFJdWdDRFQ4a2FKMHBkYVM5NXlWbk9BN0lHbzBHTTVmazJZc1lBWFpu?=
 =?gb2312?B?UWFaOTlBY2VTRnpOelpJR2tIYzNUT1ltb1dDeVZudkYrM2ROTlVBZEtuK0lS?=
 =?gb2312?B?RkNlN1c3cURtYmJMWUZzZUZSZjY3RVpLdGtSTlpEWnNPMWdXTTcvSXk4ZmZN?=
 =?gb2312?B?alZkWlVsczRDUXlUa094YnY1VWtrVHFsT2JEeWkwUHBSam8vT2h0ZkdOTEdH?=
 =?gb2312?B?OE9oY1hrRHUwVnpBT1ZORzRIczdML3RTdlFla3lwRW8wa3lPblFSd2FockMy?=
 =?gb2312?B?QWJYRnhnZnE0VEVDU1hyRE5IbFMyd1RoZVQrTGdXZm5Gck0ydlNTaTE5cUNX?=
 =?gb2312?B?RDE3QUFPZTgrd0U2MktGeHI3R1pEWUFZZzFUd3dHaWRXdlhtaFRJK3dXOG9j?=
 =?gb2312?B?a3dadFQvSzVWU1F4NkVzMTROOU1CQkdYVUQwbEhzbFdXWUd1VUl6cElCMjY2?=
 =?gb2312?B?c0xhMFFVMHJhMzh2V241dmV4aDRudlppdzhGT1k1YWdNeFFyOVVTUlNqaUg1?=
 =?gb2312?B?T2cxa1VGQ0RMWDR0TW9lbmdsdXpzV1Q0alg5d2Fmb0R4SlVzaE5QM0dGZ3pH?=
 =?gb2312?B?UlN3Q3YyK2pkTnRVaG12cFFSaXRXeVIrNkN4bVFPcm8yd3Z1UjMzdE1jdC9J?=
 =?gb2312?B?elVpNTkrR1pWOHNQaWQ4TVYwaDNpRXhBcDlQTVgxemhjQTA5V3hMQ1o2emJk?=
 =?gb2312?B?VlhvT2pBVGhEeW91NUpyR1Naa1FDb3lWSE0vQ2VmNURMN2FNTyswcEJ6MC9T?=
 =?gb2312?B?ekExcElaRHAwVlBjWjVuMW40R3djNEFqOE52S0lnOGlLaFRVRzQrVGpUU0Er?=
 =?gb2312?B?VVpDR3BwWlpxaVZ4SGo2RFE1TGdzMkpHVmRqR0V1Ykt2enFvUGFHeTdyZ1Br?=
 =?gb2312?B?T2cyU0pGYmV5RkcwRDBQVW5nbTlwT1JkR0NuYVYyUUlRL2xuNlAzVGJGVXQ2?=
 =?gb2312?B?RVVwSTVaaytZT256alB2TU5MSVMwYkpXa2VKWXltalRSRlpHc09JVU9yK1Mr?=
 =?gb2312?B?MHB4RFV3MDJYSDNhZHdUZmlkTDJtbFM3eWpHVnpxY2FTYmRlT1Q5S0x4eUxG?=
 =?gb2312?B?RjdZUjN6NEUwUTNwRkNwQ1pFQVFNUitCNC9JOVNTbVd2ekx3c0I0cGhnZDZ4?=
 =?gb2312?B?SlR4UzFnV2RZdG9JYldFRGFTRHhhSnNwSFlLeXgzdVY5UkhCLzN6bVA0R2d4?=
 =?gb2312?B?czBvd3kvRWd0bkduakhOWG9mMXppVzlxNitVM3JZaXpxNUhsakhaNWxsUlFQ?=
 =?gb2312?B?RE90eEtFNWlqZ29xQkJXbFRESkk5dlRpUkxKdHpuWUluLzdZaWtPYmFMUi9L?=
 =?gb2312?B?WUlHNjVwcFJNdWxQempmWS8xRGhmU045dmhhN0UvVDdXS01MdWJic01pN0E3?=
 =?gb2312?B?RFVEYXlKR1BzRHdUZ0VhZ0h1YUplbnd1dDZva2MzWGU5UUhNTXJkM1ZuRmlJ?=
 =?gb2312?B?UmNJTXVETExVaG4yd2JMbVFYeVVteFFHMG9xQy9hMDBqTklwTDduWlFLcXNM?=
 =?gb2312?B?TXJnZkJJWGtHWitLN0haZFMrWWpCZEo1RlBNUVNmQzVpV2xzMmI5c21VWXUr?=
 =?gb2312?B?bHZ5V0VvbDQvZGlEZEN6SFkvUko5aklkaVhsbDhNRDFpNW9HQ2dMdThlbkor?=
 =?gb2312?B?RDRsT0ZLTW9VRm1nSnZkK3luK29IbGZ6dVArREFEVURaSnhOM2pNNDlSSXBh?=
 =?gb2312?B?MDJadDlmc29GZ01nRm9WVVNJenZzRWFaNmJvcjU1YVZqTXp4Tk1rR0kvdjlO?=
 =?gb2312?Q?3Hfy+TrnxYefnWi0GptBQkM=3D?=
X-OriginatorOrg: hksfbsi.cn
X-MS-Exchange-CrossTenant-Network-Message-Id: a519884c-5f28-453f-2e2f-08d9ce25d14e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB4282.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2022 19:26:47.1089 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 24b48e00-d1e6-4342-b43d-390f1775d9a9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HvBRSkTTRNIxjjh/Qn5hhXmr5UIW+qwsusYExYcNZjRlYysMeoRIXFQtcRQYrrpzwhosgM6iJeJW5gQ654+Vgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4714
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ¬ø¬™√Ü√ï√ç¬®√Ü¬±Vx: 153 0298 7091 
 
 Content analysis details:   (0.1 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [40.107.243.116 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [40.107.243.116 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.1 MIME_HTML_ONLY         BODY: Message only has text/html MIME parts
  0.0 HTML_MESSAGE           BODY: HTML included in message
X-Headers-End: 1n46VK-000235-Gh
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
Content-Type: multipart/mixed; boundary="===============6457904619045210099=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============6457904619045210099==
Content-Type: text/html;
	charset="gb2312"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN"><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></head>
<body>
<p><font color="#ff7f50" size="5" face="ÀŒÃÂ">ø™∆’Õ®∆±Vx: 153 0298 
7091</font></p></body></html>



--===============6457904619045210099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6457904619045210099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============6457904619045210099==--
