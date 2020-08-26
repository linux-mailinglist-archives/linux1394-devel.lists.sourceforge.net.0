Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A23BA25282E
	for <lists+linux1394-devel@lfdr.de>; Wed, 26 Aug 2020 09:07:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1kApWM-0005MY-2Q; Wed, 26 Aug 2020 07:06:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounces+4948103-df75-linux1394-devel=lists.sourceforge.net@sendgrid.net>)
 id 1kApWK-0005MN-BN
 for linux1394-devel@lists.sourceforge.net; Wed, 26 Aug 2020 07:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=31y0CLfGCgV1bX23Ut1l2E/ZDMW2+7SKKbokNPNwHrs=; b=aS/NMgW2q2OpON9YOXUCzIAt8m
 bGfz+TirMlxpSV3RlU35ptWHs5l5bGJqg7SDMH1Np5KiAjDPIj6me+eAc38P//S5GcwAEbXOdqFNp
 glJm7bjeNgQazwI6xkZste6tJVj0E61yTKl1IihcHr8HS7rMtH2PdWNgP7QGH6es+61o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=31y0CLfGCgV1bX23Ut1l2E/ZDMW2+7SKKbokNPNwHrs=; b=N
 kdCF7egDXBz/NfZ9WSkdHBvMtCFaNG3MBrthCC8MF50tB/npA6cc08yMhbJRyXU1dUrUwO5X6W7mZ
 GDCt4RQZNb1HwggO1Vsx0XnCETttA6QT4HmyAhZQ5kMSW2M8SKJzOcfWWPDXGezC/rSgke4iDV4Ak
 rEbylDftwug85svc=;
Received: from wrqvpnpf.outbound-mail.sendgrid.net ([149.72.50.63])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kApWJ-006db7-65
 for linux1394-devel@lists.sourceforge.net; Wed, 26 Aug 2020 07:06:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendgrid.net; 
 h=reply-to:from:to:subject:mime-version:content-type:content-transfer-encoding;
 s=smtpapi; bh=31y0CLfGCgV1bX23Ut1l2E/ZDMW2+7SKKbokNPNwHrs=; b=fZ
 VJJGXd17W554dMiRUTFb1UW++HSCzqoDQT/AtLaDMRz1zfE7fUMmRniN03ljFw3p
 6TbFgMNc18LWWM3ERVA4KFP2BwbxVM6VZHkeIRSosDvOmdZJsWcNujCCnlwp1SFO
 uNynFZ/XoFsv1LcfotGpmGkSD3n4ZvmwYMDG1/c54=
Received: by filter2040p1mdw1.sendgrid.net with SMTP id
 filter2040p1mdw1-19302-5F460A09-B
 2020-08-26 07:06:49.233029072 +0000 UTC m=+28211.366679815
Received: from mail.com (unknown)
 by ismtpd0023p1las1.sendgrid.net (SG) with ESMTP id 7Y-WneJ7Sy6WFYY2FAyMVA
 for <linux1394-devel@lists.sourceforge.net>;
 Wed, 26 Aug 2020 07:06:49.036 +0000 (UTC)
From: Richard Wahl<wahl-Richy@mail.com>
To: linux1394-devel@lists.sourceforge.net
Subject: DONATION
Date: Wed, 26 Aug 2020 07:06:49 +0000 (UTC)
Message-ID: <20200826070648.8FAA9A10E5BF7965@mail.com>
MIME-Version: 1.0
X-SG-EID: Pi9w8YTZchD2AGqRTKxcX/hvrtAIswiOm2Mb1qxwhorJ2gK7BB4dIUgR+dfk5XY8apYA+FBmKqV6Ps
 DvEjGaXLaA3vVjhh0qdk8gG+BmGt6VYi8e+lCp2AcZj7JZM0z92y+XmEhvgd7m3G7JgHdoGJNUWV38
 FERjbB85grSbLCyh2DxhYY3r0pYqEIxYGymSsDNoDmDoPiJ9EMh4D0CdXo4gtI02fqIiKGp6SoaIqp
 c=
X-Spam-Score: 3.6 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?149.72.50.63>]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (wahl-richy[at]mail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [149.72.50.63 listed in bl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 LOTS_OF_MONEY          Huge... sums of money
 2.7 FROM_MISSP_FREEMAIL    From misspaced + freemail provider
 -0.9 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1kApWJ-006db7-65
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
Reply-To: adelenbreton@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hello linux1394-devel,

you have a donation of $3,000,000.00 ( 3 million dollars).
My name is Richard Wahl from the united states. I won the America 
lottery worth $533 million and I am donating a portion of it to 
just 10 lucky people and a few Orphanage homes as a memorandum of 
goodwill to humanity. and also as a way of assistance over the 
COVID 19 Pandemic.
If you are a recipient of this mail linux1394-
devel@lists.sourceforge.net  contact me on  
adelenebreton@gmail.com for more details and claim. I may be very 
busy but I will take out time to respond to you.


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
