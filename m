Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F691FB3E9
	for <lists+linux1394-devel@lfdr.de>; Tue, 16 Jun 2020 16:14:29 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jlCM1-00039Y-Hg; Tue, 16 Jun 2020 14:14:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=4292e6790=Johannes.Thumshirn@wdc.com>)
 id 1jlCM0-00039R-2M
 for linux1394-devel@lists.sourceforge.net; Tue, 16 Jun 2020 14:14:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N1ADHNg3PJ8+F4rqdl0gQ3PQ436o5b5tv/CbEdwgCQI=; b=h+Hdmx9sABub0zGxKBHCbRu3TL
 GnUWHhl3YOycMFLkIjvS/LAAx3L3r16LVEuAiWZOOQglYQo3sjPBBFIlTr/7X53XPa5VIaE3EUn8u
 kYeVYYE0wV64ClJYDZsMTXyJjzNxtyweZWG9pwf3SIY4iBRPQQvbspW3YQFefk9XvAWg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:Message-ID
 :Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=N1ADHNg3PJ8+F4rqdl0gQ3PQ436o5b5tv/CbEdwgCQI=; b=H
 4KxnkM3ES+Pf10gRMe5zbkI0R7ZCpwM2RJjrWRWzQObKR1oKhd5Ul8fKA4kJ8NaK2mXONNvkFv8Sz
 5lnPhzVIYI/Ri2lb1rP4BLvjnE0YblFczj1Sl5+dyZhEz0cXvEwwBB3nG+KZmrj9KrBWh9r3nG0CV
 ErLne6WyQ0EQm6D8=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jlCLx-0059x6-GH
 for linux1394-devel@lists.sourceforge.net; Tue, 16 Jun 2020 14:14:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1592316857; x=1623852857;
 h=from:to:cc:subject:date:message-id:references:
 content-transfer-encoding:mime-version;
 bh=5ru8INMLguJmSGjgKHqEdPjyXEvO+zybcMK9YmIq9xk=;
 b=RMESIsfnM3xpdCMH5ts6oxiFAdlM8iyH+CCRy1/wXGB50miVarb9b0g5
 OV8BvErAkZ21QNwJquyNLpzOGiRjGCiCXLnjh1o1t5Wk561B3hjKJL2DM
 YyrxI97XUprB58EIKCksM00D5VzrLeyUL6xKnx7LtpXvb4THdYi45CP9k
 eRkbEKxfv+Tf0tEDuzCimXI6A15BhirhXo6y72yZacFTpRdJlkbllYj0a
 YboImtcTzuGkOYKDgmAacLDIMz2SIXFS+3X/zGe/0e+qT/ErDBBdf8YVJ
 vg1hRSp+NeBVsI1f9c0+tIycAAt1uRgJmYXKdJ0Hb35x5Xln1OCGwO454 w==;
IronPort-SDR: eb1TYldMd1Mnu88G0cqZmXiReI1uNw3O7v0HvCjGcJM4k3RT3jhTf9RkwjYCRYiyoRxEF+Ezlo
 TfvQGLaIpLZ0q0c5Cos75Ns/pf52eWH6yIRo41Gz6hWgwJtrL1b8LTQUJo5MyxsFdgFzCBgwLb
 eQLhXYiCRP77sx5GMCauDe+Y7SSK/SXou6TUyIW6rVBCE6UjDZTHfNfo7cwPgXGo3ADAMQCK2Y
 6Rf33CgQH4RixLHY5UInSiDZ+Eo9ClEKrMv643A1Zd/z2JrrXN8aiVNVKizSnB0rD1iTpLD8ui
 e6w=
X-IronPort-AV: E=Sophos;i="5.73,518,1583164800"; d="scan'208";a="140131335"
Received: from mail-dm6nam11lp2170.outbound.protection.outlook.com (HELO
 NAM11-DM6-obe.outbound.protection.outlook.com) ([104.47.57.170])
 by ob1.hgst.iphmx.com with ESMTP; 16 Jun 2020 22:13:57 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S1BL/xPG/PeVHvec0QZJ/uY5lGpQnNwwd6+mo7XvXeOkOdYK3MwJ+SSMdeooMkIg6Cf8NXJlCaUe9vdzHYmYmleFb50nUDk9V4nuusduq+aV+n7i8MieWHC7ZI1xWDk4teMBTJmaGIhda68kTVWWCYnBFjPkaqoEKrktLvKYe3UwaHGv2t373hLI/Q0Q846v4wOCxeZdhc9mRHVXn8TcwkLgaEkzIyT8hRWIOoYQIX+5aq7j8ccQbt4yvVgOl0LsKsQszDb0Lq8fxtG/6whhPHl1uFp9Ra5uolAdan/2IHpzN80ltBXgyUi7biKpAXgBqCxuKAuV4fpokdHDVBOMDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N1ADHNg3PJ8+F4rqdl0gQ3PQ436o5b5tv/CbEdwgCQI=;
 b=CEbVripfhKgISVX0M/QdgE8Mg9S+fjHmlH0Sbb01xAShIdPSQNbHYrZU8rXSyEz0LupXPv38eV+kR1VW5Kp0Z1WpwZ7N0B286aCntnqTgefhFgQBkhvoU6NCjiQw6sEdj/WsWizEEmxig9RKvmXwJby1Vmxd42h7owd+5KJcOsqper1oBHUKpajI9nYH1henVOCteiWrQI4sBFg51Fuih21NZXCluYZ3mQi7pvapFY9JFOM7GB/5ieHYGkHyJ1ate+Z8g/Ugaicf09nZ34ZchgZmLc++IwweF2yA3w32VrV36mnVrJO0SG3XmFlDDuZ6zRT/QEysWPGtBjtjR8E7mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N1ADHNg3PJ8+F4rqdl0gQ3PQ436o5b5tv/CbEdwgCQI=;
 b=He+5c+JduqYVwDgoZLzLVAVFpWnnCKAeguaXri55yYn8dZ4stgpyo5ZOBFJZTB5yVZkrtuJSlnIxMfhHrzSvj95GGD3SjGw0jykEWOLKrfc2KTB+kXzcev9cRurv5YaaLYC69gmCP+FomngMbbgLUSX4KqRFFus3gKBA+RasdTs=
Received: from SN4PR0401MB3598.namprd04.prod.outlook.com
 (2603:10b6:803:47::21) by SN6PR04MB4046.namprd04.prod.outlook.com
 (2603:10b6:805:4a::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Tue, 16 Jun
 2020 14:13:54 +0000
Received: from SN4PR0401MB3598.namprd04.prod.outlook.com
 ([fe80::1447:186c:326e:30b2]) by SN4PR0401MB3598.namprd04.prod.outlook.com
 ([fe80::1447:186c:326e:30b2%7]) with mapi id 15.20.3088.028; Tue, 16 Jun 2020
 14:13:54 +0000
From: Johannes Thumshirn <Johannes.Thumshirn@wdc.com>
To: Bart Van Assche <bvanassche@acm.org>, Finn Thain
 <fthain@telegraphics.com.au>, Chris Boot <bootc@boo.tc>
Subject: Re: [PATCH] scsi: target/sbp: remove firewire SBP target driver
Thread-Topic: [PATCH] scsi: target/sbp: remove firewire SBP target driver
Thread-Index: AQHWQd9L9CW+VqfbYUW2am9N2FcWXg==
Date: Tue, 16 Jun 2020 14:13:54 +0000
Message-ID: <SN4PR0401MB35982D889857E3C03E96E49D9B9D0@SN4PR0401MB3598.namprd04.prod.outlook.com>
References: <01020172acd3d10f-3964f076-a820-43fc-9494-3f3946e9b7b5-000000@eu-west-1.amazonses.com>
 <alpine.LNX.2.22.394.2006140934520.15@nippy.intranet>
 <7ad14946-5c25-fc49-1e48-72d37a607832@boo.tc>
 <alpine.LNX.2.22.394.2006150919110.8@nippy.intranet>
 <8da0c285-d707-a3d2-063e-472af5cc560f@boo.tc>
 <alpine.LNX.2.22.394.2006161929380.8@nippy.intranet>
 <8cbab988-fba7-8e27-7faf-9f7aa36ca235@acm.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: acm.org; dkim=none (message not signed)
 header.d=none;acm.org; dmarc=none action=none header.from=wdc.com;
x-originating-ip: [129.253.240.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f4b67696-eab0-46ae-3391-08d811ff808d
x-ms-traffictypediagnostic: SN6PR04MB4046:
x-microsoft-antispam-prvs: <SN6PR04MB4046EA5A9CBA518F7A07276F9B9D0@SN6PR04MB4046.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 04362AC73B
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YUSiJ8Hwm5WME7OmxRDuxyB71Y3IvMKlMBomEvN3y9i/j8mSnTwJNagsNBfHhvpYxwsHTGRsozO8eZT27nP27ZLLlLo7RRk87/U+INkW4F5o2H9kdKYlb1V52crQuvA8zfbgta6hLo2oBEPTUTIGsUpQ5cSYhgLn4AWbpYC5B7Ar1h06FlQM+AQOW+1JtR6yDcaMe7sFqYkMTYwoqPx4K3R70DbjngaT5iANnwAx4B4eNP6AyFXRGz2ilpJzaX76f7IMquOTGz0Lf3PZeFWjRT2mNRdLaDQa7J1M89gjeW180NABk4wYwIvl/vIX0H4ML5vzA+4d+dQO2osmaLnUFQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN4PR0401MB3598.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(52536014)(2906002)(9686003)(26005)(55016002)(498600001)(5660300002)(6506007)(4326008)(53546011)(4744005)(86362001)(8936002)(110136005)(7696005)(7416002)(66946007)(76116006)(186003)(91956017)(33656002)(66476007)(66556008)(64756008)(66446008)(71200400001)(54906003)(8676002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: dZrsZbRzUHnP4XBXwlFVJemPGBxUFP38bAC/JG522uMsZ6cxXI/i+92j/xcIXqn79I1MJxQwWr7al9YZknqvbv9ROOyvhma9mkRn7LcCl+BVsYwbJ6unDv+XBVSNU0UPmVscvalEiUhEjA2o44yYoXwwLieaPHgiBTeUPXTxIFmQGYZ+XksrrQKHeIbcswOSeCiiYKWDknUwhMBzIB5E6c5IqNXJAST5NKF88BX/yCUqddOLUFhnCv8Yk/qzOQbmCFLEYJxlon5Cf9M60IQgCDP9pbxLCwFRLRd0FpcM4bPApph/9FsTTcIDMD+hj0IKdEf/SKJM653mHaLR23jTtx71mvX83Xc14OEKBoc9xfviqQ81G5LLE21opmDH+jq7ZnRQ9koeqMt3UsaXPCg6icYiYsp2TyhIuutbXQMJDNbLRVi//jIKZ56IpPHH8raZU9lcewMQMfki5XtGGQwWNIAlsaA6v5Br4Hi10u6Sim/DiCJ4CN9uvaJTJJMAg01i
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4b67696-eab0-46ae-3391-08d811ff808d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2020 14:13:54.2486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: D0cCNG3TTt5CBTr4ejKQQmhSKY5P9ZXep4z+lTTVW87qxHFI4DQ2bul+90jMIcZgur/xgnaRMG3ZsJO70aPsvYzUw2KpsYc/PcNyMUoXngY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4046
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jlCLx-0059x6-GH
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
Cc: "Martin K . Petersen" <martin.petersen@oracle.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 Chuhong Yuan <hslester96@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nicholas Bellinger <nab@linux-iscsi.org>,
 "target-devel@vger.kernel.org" <target-devel@vger.kernel.org>,
 "linux1394-devel@lists.sourceforge.net"
 <linux1394-devel@lists.sourceforge.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On 16/06/2020 16:09, Bart Van Assche wrote:
> On 2020-06-16 02:42, Finn Thain wrote:
>> Martin said, "I'd appreciate a patch to remove it"
>>
>> And Bart said, "do you want to keep this driver in the kernel tree?"
>>
>> AFAICT both comments are quite ambiguous. I don't see an actionable 
>> request, just an expression of interest from people doing their jobs.
>>
>> Note well: there is no pay check associated with having a MAINTAINERS file 
>> entry.
> 
> Hi Finn,
> 
> As far as I know the sbp driver only has had one user ever and that user
> is no longer user the sbp driver. So why to keep it in the kernel tree?
> Restoring a kernel driver can be easy - the first step is a "git revert".

Why not move the driver to drivers/staging for 2 or 3 kernel releases and if
noone steps up, delete it?

Just my 2 Cents,
	Johannes


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
