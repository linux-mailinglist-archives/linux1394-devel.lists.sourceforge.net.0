Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C903B1209
	for <lists+linux1394-devel@lfdr.de>; Wed, 23 Jun 2021 05:14:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lvtKs-0004IG-5y; Wed, 23 Jun 2021 03:13:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <lukas.yoder@gatech.edu>) id 1lvtKj-0004Hr-3F
 for linux1394-devel@lists.sourceforge.net; Wed, 23 Jun 2021 03:13:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Type:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tmzXQedi6keHpUm0s5+3UVDnMggE2TA2uHxLqjyinkI=; b=YeE6JMTjMG1S/fSDnolcMuCUUd
 YUak0fWcU0jJ0iDJi7iJFlNS2YZlRmoCpAQbeWDD/fRXv20uCd6JpelIW/cei4w/qRu3fUTieAYgT
 xnV1zd5pr5vm2Kyur+K82lV2y5V30Jp4tyhoWkk0c00F5tegK2HUHlPV5MspA2LxR/RA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tmzXQedi6keHpUm0s5+3UVDnMggE2TA2uHxLqjyinkI=; b=T
 qiWAmQpUZY+aX2Mf7LCsBs2uOV7wArQrhH68wQgmDZq32tvPPbMjvtbts5LV/m6d2F3EuDjqiTNra
 KR+2gLi1P7b8Nog7+HJVYb/HKTy0SQ041CEEc/OAataz15EV/4iz/k+BKiPFNvZUZwq3y5OD7W3K+
 flOic1q8GfKqT8Zo=;
Received: from mail-bn8nam12on2096.outbound.protection.outlook.com
 ([40.107.237.96] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lvtKX-008N3F-9U
 for linux1394-devel@lists.sourceforge.net; Wed, 23 Jun 2021 03:13:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jLkLuQvlKgZKv64XyVqS7F9aq+N+e7r2IxbqS61ADwQIBESjpF246rcpsIDOhjWAl4QODXKdCd9eE7pM02O1xi5JKFebw4GNZ6tV0l50py0jktJGOnGwJXi1/mKsa2sknC4RMsRfaF6/v9ZtMXaLoef6+cjyLCwGLBd2iy7vurdMK4gfH0A9z0bl6AL+dwZILorFXw6l9XktPge60QYGQwDlujugAYTgRSihDeM+jbKL3yipBWFUPUuHuXFMRpvNaNUaZTmjcKdhTIkhJCQhg8NSs8GscqGtZS5zNhn9zYIjUeO1wnIxsu92T2r9SLxEsaZbD/njHNhmIDzRSNxCug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tmzXQedi6keHpUm0s5+3UVDnMggE2TA2uHxLqjyinkI=;
 b=hfnlBJgsSXntO2eAjs8v7iuEYGLRk0YdxvcuTNtuPElj7MdhK7OylXaDpFFVy3kS0Gb2dXiTl2FxZShCfhVTw7PuuhErelcFjPEptqcuAiJbEuL2Ma1jU0On0wjKFN+aIZICdld2XmhcK3z4zGaVbarPMQl1BM/R7cAbGDuv3B3SVvYf/aGgBJjEyHvHkqmAqKgJJT993PtyuUaofEyI1gN5CiXoa6uYECBuTy6nFf6NCTOyMlFLHfvLBuCuFdmsD22c8CXZbI9Z6FidBF9TtDWfRNW6GMR2vOP3QwE10gVqfLCOyDwpNo4FM5fIEPpIy17LqbldQnVm7h5S/4g05w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gatech.edu; dmarc=pass action=none header.from=gatech.edu;
 dkim=pass header.d=gatech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gatech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tmzXQedi6keHpUm0s5+3UVDnMggE2TA2uHxLqjyinkI=;
 b=DdOnNM5QupZFXkq6DjTuQgOjLyLUyfGvYOFwDs5K2BZWY5n4bzvD8SUsIwCGE6S/oY+/FKpbkld/h5FnYSKJv0SqIEgtRDH13gHg9Tfhll5o2v6YrW+5Heb/bQwdepuYbTBAZkMI7ZBPavTj52zR/IFCsPTN7zsJPHpe+nED7r4=
Received: from MN2PR07MB7247.namprd07.prod.outlook.com (2603:10b6:208:1da::10)
 by BL0PR07MB7843.namprd07.prod.outlook.com (2603:10b6:208:8f::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.19; Wed, 23 Jun
 2021 00:14:00 +0000
Received: from MN2PR07MB7247.namprd07.prod.outlook.com
 ([fe80::1890:21e8:ac4:1403]) by MN2PR07MB7247.namprd07.prod.outlook.com
 ([fe80::1890:21e8:ac4:1403%7]) with mapi id 15.20.4242.023; Wed, 23 Jun 2021
 00:14:00 +0000
From: "Yoder, Lukas P" <lukas.yoder@gatech.edu>
To: "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>
Subject: FireWire OHCI Driver Issue
Thread-Topic: FireWire OHCI Driver Issue
Thread-Index: AQHXZ7mmUhcnCboMV0iYGrdZ2mFUdA==
Date: Wed, 23 Jun 2021 00:14:00 +0000
Message-ID: <MN2PR07MB724736CDFE0D13C83CFEC7A797099@MN2PR07MB7247.namprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=gatech.edu;
x-originating-ip: [130.207.226.91]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1c63baae-8e06-4b6a-d643-08d935dbcd07
x-ms-traffictypediagnostic: BL0PR07MB7843:
x-microsoft-antispam-prvs: <BL0PR07MB7843C5D8C8B93C10A7DCBB5497089@BL0PR07MB7843.namprd07.prod.outlook.com>
x-gt-tenant: 042d12d7-75fe-4547-b5b6-0573f80f829d
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c/xz2QxV2xdAdYIO6qlv4pm6XmMWs1aoene/tCpHc/bpjfOJktpguvD5+s2v4x/dU7b0ifIEl75scIoG/zT3pnKO877//k1CYlxnOINTdSW8MqNP+uDW16EmMeoTBYeTP0RiIFy/zzTafs7A62dsnkxcVwG4etRRsfSIeOn3aRqPQsvJ3i5HR9o5n6Lhl4KCcqskNX4reV7/bq8UgFSIiJqSoM0/ZONtUeTbaYBKLX/pF29uh7P8RvttX8QCPYwBhNs8r3VKIxAB0i0dgjqLkTMOZZrVR2kjJAv9Gl6tHpTSKk4XNsrGSg72w78hKW4n6DdxY3WfbCiktdkoA3aJwxQnDEy2AusTdLt8F/EOcwk8S9JZaYoQ72JNuFPDr6wcxZk83913Kja5ruZoB1xSlhU2WAxunAgZkjpY4SNnqbHWlC/nRVDfrUUwCV/ir7xOL+BpQSAhxr1tE/mXXaYBONEVE4+6Fab7twsky4SYDq8NnbWgNe/HZYsHzlDRg30vb8TQDRUdDD7LlGZjyU6OWuEee560pt3fNPBkxRUes3t7NzC2NNfegAL+sKO3ufj20M0fBDwK1hKv5ktgA62mbeqjTTxr8u2XLNTGcVL3KTq71eikh9QppjxJ/Ipco8TPkbowg2X/zNICUFzCfUX/G106Tp1/GjwYg3CnnT+llG++85UVAyLBtV6dxzhdmtqpRgV71Baha3ufmtTVRLMgMJDmXlCYSbGrXBbNKzQp1yowpTQ60mzIk3wKXbasiV0ViKUVdiffsLm3yZapf3J+DWf7zxVPXFteVVdsNdcXwU6TKlV9L2UO1U8rqsCLa/Gd
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR07MB7247.namprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(366004)(376002)(346002)(396003)(55016002)(316002)(786003)(3480700007)(966005)(2906002)(64756008)(66946007)(19627405001)(7696005)(6916009)(8676002)(76116006)(66446008)(66476007)(66556008)(86362001)(52536014)(478600001)(186003)(166002)(26005)(122000001)(8936002)(38100700002)(6506007)(5660300002)(83380400001)(33656002)(75432002)(71200400001)(9686003)(10126625002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?kdxL3WoFM0ufLPlZqAX8e5Wd6YPIHyBb5ewowcmgcIjySutek8sQHOyLLS?=
 =?iso-8859-1?Q?naHy9ykGxbz+ZsT32tilQx/KZWI7MgmwRldEb5DX4N0GBKmKt01GZ/hHt5?=
 =?iso-8859-1?Q?8f+PWQVhSTQkUCXWQeoKr+J9gyKRiKubFFcHlwyAFmXmyQftHbBfVtaM1F?=
 =?iso-8859-1?Q?EaARj/5rDwBiR9ibkSm92wLmKWNWgbr7dODAVY2eoRJUmqaE+dsrDdUzZc?=
 =?iso-8859-1?Q?hE2QxoIo5+7KNxmaJszgoH8twTfbsfvi4JaQmj5HngtcC+qggw1UTm3CMJ?=
 =?iso-8859-1?Q?P/qaaDVDUKy8acn2dFsEiHqJyIW5HbZU3X356yGea57dDFXEUHLeXZzU3r?=
 =?iso-8859-1?Q?Tl9fFslkucpiwUiBuUKMY3M837ievMDZHA4OE4QlUd6ZEb5+4By7y72QoY?=
 =?iso-8859-1?Q?HC/OF8fkPTnlvq3OGvvSKuAcwboybagIZxk6p7sMKmDbi1bcj/7c9ug9RV?=
 =?iso-8859-1?Q?TT5bmFjJ1aDOvpACqDBwsJkgmM7HGY4W18KNe7aRpU6g1bR9OWZCPlGIzx?=
 =?iso-8859-1?Q?iUdUsRMJmsXag71+iCUw2UKY8q8tHfNi6znmbStvOLOf2lqfkdDp9rcbx1?=
 =?iso-8859-1?Q?FifOESw2rBWkMTD7mJ7cbyJ0jST+7zrxiptq9DFrz+RDbq30Mo+t56897t?=
 =?iso-8859-1?Q?lwPHjyw6NegOg+yhhkiKmR6a9Cbnpw4OJNH5p9NWymXpvpj6pOaypK7xR+?=
 =?iso-8859-1?Q?plkj2Jtl6HDPejabui8WEe16lLrel5F53GUVGOPCoHfE4pY21M3EEJtw1t?=
 =?iso-8859-1?Q?ss7puliPokqhEbbgeLYp6G6N6oW25G+ukZjfXGsqCGN9JSr5ibN0okCvpi?=
 =?iso-8859-1?Q?i58z1ZiCX25lytxqEH2bhfRi+FMa7SHZkx8c2eIBJkaG9Ak40Td0UccoiA?=
 =?iso-8859-1?Q?pZwTO1Zt9VaU4TVzPO3Trp4en9MoQRZXFEEafk4uXixY61b+ZkR3BV2a8l?=
 =?iso-8859-1?Q?JglVSjw/3cZUNq+twWUe4wliyHfhn1N33V9xjQImrWo29YzrYCaaE5mVwb?=
 =?iso-8859-1?Q?V5zXixdAyOhF0r8tAQ8d3JN/IanBWE7Sb81mMJ0i7snD/sjNyLmuw54jEd?=
 =?iso-8859-1?Q?M7rNtB0i82ocDv3f1tKnyKoBNs6YcUjr0XackeaMS8emLjFzgwGUI6CfvY?=
 =?iso-8859-1?Q?03eHFB8F9tHZSjDb7+mF20FJQtIVF0kQElRoVVpRZPNk8NO2YN7QXP5lca?=
 =?iso-8859-1?Q?P3yV2j4P6L2sVd291MfyxqvlZ0JIa9zZyHG+m6lj7fgn4GN4cShbdnZanO?=
 =?iso-8859-1?Q?wAIarZWK3fKHPIXSbK0r9JCozb1wpD/hVZEx4p6ydnPI6pwMUHIv9dwN5V?=
 =?iso-8859-1?Q?M0NmCcJLmMuH/Rg6z9sSgVOZu1gcbkKUF1yv1FCen8nwXgk=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR07MB7247.namprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c63baae-8e06-4b6a-d643-08d935dbcd07
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2021 00:14:00.2822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 482198bb-ae7b-4b25-8b7a-6d7f32faa083
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rccuHV6gIY6b6ZlqiDcuqqTI+noBCB0F+0+XRWIhyd6kblNZExcfcsc967Ir9tc5TMws2hWKHPB9mjCxsInTpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR07MB7843
X-OriginatorOrg: gatech.edu
X-Spam-Score: 1.9 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: pastebin.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.237.96 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.237.96 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lvtKX-008N3F-9U
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
Content-Type: multipart/mixed; boundary="===============0155344165065800580=="
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

--===============0155344165065800580==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR07MB724736CDFE0D13C83CFEC7A797099MN2PR07MB7247namp_"

--_000_MN2PR07MB724736CDFE0D13C83CFEC7A797099MN2PR07MB7247namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm using the vanilla Linux kernel version 5.10.27, and I'm encountering an=
 issue with the firewire-ohci driver when interfacing with my OHCI-complian=
t Texas Instruments TSB12LV26 IEEE-1394 Controller (over PCI).

Devices show up under "/dev/fw0" and "/dev/fw1". In the kernel's sysfs unde=
r "/sys/bus/firewire/devices/", I see "fw0", "fw1", and "fw1.0".

If I build the OHCI driver into my kernel, I get nonsensical values in "/sy=
s/bus/firewire/devices/fw0/config_rom". If I instead build it as a module a=
nd manually run "modprobe firewire-ohci" after boot, when I read "/sys/bus/=
firewire/devices/fw0/config_rom", I get the name of the Juju stack spelled =
backwards alongside garbled text: https://pastebin.com/hm7Y6SBr

Regardless of whether I build the OHCI driver into my kernel or as a module=
, if I try to get information about the "fw1" device at "/sys/bus/firewire/=
devices/fw1/config_rom", I get the device name spelled strangely as well: h=
ttps://pastebin.com/raw/dsHuWrzM

I believe fw1's "config_rom" should read "QImaging Retiga Digital Camera (v=
100)".

This does not appear to be a problem with my card because it doesn't know a=
nything about the Linux "Juju" stack.

Here is my kernel config: https://pastebin.com/raw/dw9w3KtN

Here is the relevant portion of my `lspci` output: https://pastebin.com/raw=
/9QFugen9

Here is output of `tree /sys/bus/firewire/devices/`: https://pastebin.com/r=
aw/TMaW1S0T

Here is output of `grep -R . *` in "/sys/bus/firewire/devices/": https://pa=
stebin.com/raw/6ZGW7fD1

It's very strange that the strings in the config_rom's are backwards and ou=
t of order. Could this be an issue of endianness?

(I need to use this exact computer to replicate some existing research, so =
I can't switch to another firewire device, alas. It works on Windows, but u=
sing Windows is off the table as well.) If any of you can suggest a patch w=
ithin the next week that allows me to use my firewire devices, I'll buy you=
 dinner.

Best Regards,

Lukas Yoder




--_000_MN2PR07MB724736CDFE0D13C83CFEC7A797099MN2PR07MB7247namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I'm using the vanilla Linux kernel version 5.10.27, and I'm encountering an=
 issue with the firewire-ohci driver when interfacing with my OHCI-complian=
t Texas Instruments TSB12LV26 IEEE-1394 Controller (over PCI).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Devices show up under &quot;/dev/fw0&quot; and &quot;/dev/fw1&quot;. In the=
 kernel's sysfs under &quot;/sys/bus/firewire/devices/&quot;, I see &quot;f=
w0&quot;, &quot;fw1&quot;, and &quot;fw1.0&quot;.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
If I build the OHCI driver into my kernel, I get nonsensical values in &quo=
t;/sys/bus/firewire/devices/fw0/config_rom&quot;. If I instead build it as =
a module and manually run &quot;modprobe firewire-ohci&quot; after boot, wh=
en I read &quot;/sys/bus/firewire/devices/fw0/config_rom&quot;,
 I get the name of the Juju stack spelled backwards alongside garbled text:=
 <a href=3D"https://pastebin.com/hm7Y6SBr" id=3D"LPlnk">
https://pastebin.com/hm7Y6SBr</a><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Regardless of whether I build the OHCI driver into my kernel or as a module=
, if I try to get information about the &quot;fw1&quot; device at &quot;/sy=
s/bus/firewire/devices/fw1/config_rom&quot;, I get the device name spelled =
strangely as well:
<a href=3D"https://pastebin.com/raw/dsHuWrzM" id=3D"LPlnk385994">https://pa=
stebin.com/raw/dsHuWrzM</a><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I believe fw1's &quot;config_rom&quot; should read &quot;QImaging Retiga Di=
gital Camera (v100)&quot;.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
This does not appear to be a problem with my card because it doesn't know a=
nything about the Linux &quot;Juju&quot; stack.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Here is my kernel config: <a href=3D"https://pastebin.com/raw/dw9w3KtN" id=
=3D"LPlnk755205">
https://pastebin.com/raw/dw9w3KtN</a><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Here is the relevant portion of my `lspci` output: <a href=3D"https://paste=
bin.com/raw/9QFugen9" id=3D"LPlnk593635">
https://pastebin.com/raw/9QFugen9</a><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Here is output of `tree /sys/bus/firewire/devices/`: <a href=3D"https://pas=
tebin.com/raw/TMaW1S0T" id=3D"LPlnk401109">
https://pastebin.com/raw/TMaW1S0T</a></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Here is output of `grep -R . *` in &quot;/sys/bus/firewire/devices/&quot;: =
<a href=3D"https://pastebin.com/raw/6ZGW7fD1" id=3D"LPlnk714496">
https://pastebin.com/raw/6ZGW7fD1</a><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
It's very strange that the strings in the config_rom's are backwards and ou=
t of order. Could this be an issue of endianness?<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
(I need to use this exact computer to replicate some existing research, so =
I can't switch to another firewire device, alas. It works on Windows, but u=
sing Windows is off the table as well.) If any of you can suggest a patch w=
ithin the next week that allows
 me to use my firewire devices, I'll buy you dinner.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Best Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Lukas Yoder<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<br>
</body>
</html>

--_000_MN2PR07MB724736CDFE0D13C83CFEC7A797099MN2PR07MB7247namp_--


--===============0155344165065800580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0155344165065800580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel

--===============0155344165065800580==--

