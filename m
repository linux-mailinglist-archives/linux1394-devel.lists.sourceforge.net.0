Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDBB81979F
	for <lists+linux1394-devel@lfdr.de>; Wed, 20 Dec 2023 05:18:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rFo2P-00060n-NQ;
	Wed, 20 Dec 2023 04:18:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rFo2N-00060X-As
 for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pMmsyjj7nl7WSS15wYh422IW+VbkrnpbXUDIHZjOSwQ=; b=GBMP9twtWRYgG6tDsRqzzbyuHC
 t9/7Jvze1do/hnjBGi7WS/sjksg8tA9lOUdrLshhIm6KOnOLciyDKenCoWtw4pHaiqnrKogTYxU+F
 cnANO0V4wfMg+W3gx3o6f4xWlO5bX1BwdMH+MwTgMHheptT3f33Q3bHmQOYKWeIyf+Is=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pMmsyjj7nl7WSS15wYh422IW+VbkrnpbXUDIHZjOSwQ=; b=Nox02n/aUnLpkmwT0B9Zsu9wCY
 skYBZavlH8dO9MEXUo83JIH5g10ZHFLYMHpZcZolmFczB0r6+DGwZuCoFuB9xHqvgFBpfyHvaua5o
 mzhgXKkmFH95pPulyavCwei5QpIyLSG9oUYXAU6Aae/Tj/84JsORkyF9BMqMlye+XVh8=;
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rFo2M-0008UY-3W for linux1394-devel@lists.sourceforge.net;
 Wed, 20 Dec 2023 04:18:27 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.west.internal (Postfix) with ESMTP id 589803200A34;
 Tue, 19 Dec 2023 23:18:15 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Tue, 19 Dec 2023 23:18:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1703045894; x=
 1703132294; bh=pMmsyjj7nl7WSS15wYh422IW+VbkrnpbXUDIHZjOSwQ=; b=G
 YjGfUJIhOJwkHSqDxieXHzEPhT+uOTQscQGYgEka7MhjZppnj5HTzRFUOEtxHHVe
 be6F3CP0puIHkQJL7AxFJ7k3tIiIrCuNpz2nXkcgYFdWnDGNTlc99zDL8WDW0R3Y
 zLzfzudvUwIhKXolc2SdhFTo9pOlviU3C9wY1pjM017YBCdfosCqv1/y2OTQ73ex
 GQuCz7+cmyKT8/3v0KaH5BPifs15G+nvCbR+IGMTLzMd2XKSDa4krTqD4CzuX+Oy
 fQtmQUfnlSZsrfsBgxGtrPNDOu59gaax6rqlT4ROjYCVE7+O1IHgoL5LbZg2NKOt
 IazKAUfpulyKJC11yNBMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1703045894; x=
 1703132294; bh=pMmsyjj7nl7WSS15wYh422IW+VbkrnpbXUDIHZjOSwQ=; b=Z
 GQp/efhkgdyUbPGQOWeMq/CEghPDvKbrA5QSoFY4y8psrSDskmRRkrmO1Sx7o5Vs
 rtVwgYP6XB45uqk9P8lF00uBonBewbb3weHmmYwHcx3DNj3d80FU8WiOMPHuqnMM
 18PMtwCZ4L+cXqdwZGiostS3JNTWyWB08u+Tds6kuIMpjeyCwO2Gw0epAdaLDHjh
 hZyAKG2gTHSkF5wi1G7cfqILuaR2qztr532y4oIfiUh8FKNHUpz3RY7Xu2hQjiOt
 YCRMcwIxaG7AyGXgbtYHm6zXjNS8ULErNWrf4OcR+K98AP3FY+veRc/JE8b5K3L3
 +0rAQgpjitcwQakQIzGoQ==
X-ME-Sender: <xms:BmuCZQuwJxqHnA5yEo5fchnB1ld8CiIkITBuP7MLPsM4Eskbe9HDaQ>
 <xme:BmuCZdfyKedmLuHVf7Cl-PkywyEDr6N1JqYu9hz9sHFJsRZ_mmYE49gLd1OkrBbSZ
 AnTZAkCTdahbIfmAPU>
X-ME-Received: <xmr:BmuCZbznnWTE0bhHc-nIxFJGrINO74rHPC8crk0YsdDN5KiiZt_t6_OSV7p2hykxtBlMA6KyaivHk7b0KFg3GtRRwhn7yskcnSl05asb-qnJBw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdduuddgieekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:BmuCZTP_oaNFAcffZaSDIvln13o1nsOt_kEE4lXBeeVv5kDVc1a-3Q>
 <xmx:BmuCZQ8_ifDqRnqpjFogeTLPQc2PmdgWItud-hMduH28C4b1SzHSiw>
 <xmx:BmuCZbXv0V3SCJy7UdXjw4xqm88dfETVhkvkv7MdlrGbLeLHagoOAg>
 <xmx:BmuCZemdGGBDkNuD5bJKFjsMoKv_bMx0dB3cJBr3s-s0BObGQMjwrw>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 19 Dec 2023 23:18:13 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/8] firewire: core: adds constant qualifier for local helper
 functions
Date: Wed, 20 Dec 2023 13:17:59 +0900
Message-Id: <20231220041806.39816-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231220041806.39816-1-o-takashi@sakamocchi.jp>
References: <20231220041806.39816-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Some local functions just handles given argument as mutable, 
 thus it is preferable to add constant qualifier to them. Signed-off-by:
 Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-device.c | 6
 +++--- 1 file changed, 3 insertions(+), 3 deletions(-) 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [64.147.123.24 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rFo2M-0008UY-3W
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

Some local functions just handles given argument as mutable, thus it is
preferable to add constant qualifier to them.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index eeda7cc59e27..96b0b43da863 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -171,7 +171,7 @@ static const struct ieee1394_device_id *unit_match(struct device *dev,
 	return NULL;
 }
 
-static bool is_fw_unit(struct device *dev);
+static bool is_fw_unit(const struct device *dev);
 
 static int fw_unit_match(struct device *dev, struct device_driver *drv)
 {
@@ -679,7 +679,7 @@ static struct device_type fw_unit_type = {
 	.release	= fw_unit_release,
 };
 
-static bool is_fw_unit(struct device *dev)
+static bool is_fw_unit(const struct device *dev)
 {
 	return dev->type == &fw_unit_type;
 }
@@ -838,7 +838,7 @@ static struct device_type fw_device_type = {
 	.release = fw_device_release,
 };
 
-static bool is_fw_device(struct device *dev)
+static bool is_fw_device(const struct device *dev)
 {
 	return dev->type == &fw_device_type;
 }
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
