Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBB7815E79
	for <lists+linux1394-devel@lfdr.de>; Sun, 17 Dec 2023 11:30:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rEoPt-0007Wy-Fg;
	Sun, 17 Dec 2023 10:30:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rEoPp-0007Wq-Mv
 for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1pTTxU/VbzAm0lsOewvACvD5yOw657Fm5X2fzaBqO2I=; b=MKqR48cM5uuu+p5T2Hzzxjq0pu
 cV0Dzxy1kaGZbaQ8KbQfPIoTCZrdhMHhYk7yLjoVY3aZES616s4wRTGlBnhX4fzBH+NE2iku15DB4
 1smIAc+kgXHgDnP35yef5UtXus4bMflr5wSg/t+R1COdC2Ue8hkdLDoPQClT9A4jOxCM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1pTTxU/VbzAm0lsOewvACvD5yOw657Fm5X2fzaBqO2I=; b=la3AVUgCqxqaSDZU8wg8VNmHI3
 brdZ0s6s6EKnRBz3niUEkUB8iFr5L5L368XoweHohvh+g0NhKrOAm6psnCsd+2dRipn6SmTrVwJAu
 CSB+ZTpmqc7F0SzRN0QJ72tJUiMufISaqFMIErgRFDTVqugEoY4n6JP+vhhpISTDki2M=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rEoPl-00047X-Hs for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:32 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id E569F5C00C7;
 Sun, 17 Dec 2023 05:30:18 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sun, 17 Dec 2023 05:30:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1702809018; x=
 1702895418; bh=1pTTxU/VbzAm0lsOewvACvD5yOw657Fm5X2fzaBqO2I=; b=s
 vQuyeIPK92jI1h59xHID4x1M1mY9Jc9uN0hTwfyXRUs9hkZgsDQVl7oA/tkOjAKA
 sxrTf4XLGx685gMpiAhLuzex0rCYuZX7VLq5hSnZzEfVmS08XfqjYQHS/hLg2Vm7
 zISRUal77Dkt8EWpYbv7vdXTcOiqfalyXJytI+Wc79QcE1LK9gJUa+3NJg6DzXPG
 IDiuZ8MX3h2O+gCGr2nKou3fkfgwmiwJyLEWvxSWO7PIXBeUZMmXs7LoX94OCRN+
 GIqp+tHB8l4Rq1FLwEL7yEtruY3K+S3a2fNlop2qQ0HLtjK0mACpszPPrU7MlG4e
 jBf/Y+mpKmzf/qaAQOatg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1702809018; x=
 1702895418; bh=1pTTxU/VbzAm0lsOewvACvD5yOw657Fm5X2fzaBqO2I=; b=G
 coZR86YNxYWIDNJxbKMR78//htusgLWPBhH6Iyg+Mgmiewk/fie4rsvi6EzOalW1
 e+agUOJdeRXHoLQI9oclEVAzDmsxcc9g77+WbdQfj2vK6PcINGXVNFpeEarGRJmT
 9TZID/PR++LQXVDbWlQqoYq2M/xp06aKbRmyrKvqDX5zJ0eXvAOtLI26FSyNj4M1
 4qln2tEtaou5MCTD7tcVvzpBUZem0icJvXX4pyxT7rv3pCC3U6jMtFfwWJi4Rd1m
 Nnoeln/N1M5oPf8JWmh4AL535/mLXExobh7sFXoEqS2pkbQYs41qgycjoGhfEcBa
 WF0htMEfEZNzAHGMyaEdg==
X-ME-Sender: <xms:us1-ZWyXawOTgErjC15bvEl4PUOX7vx2ApzaBtOvkxTdYjS5JzDbtQ>
 <xme:us1-ZSSdYKbXgPjyGshI-qFxKHxNm-2shkjgaO74ExzQsmQ5LpQ2mojIsuZrj7dLD
 3MLbxMzFKUNLzt0O70>
X-ME-Received: <xmr:us1-ZYWY4bDfMSEuIHBONv_WLV0sp9nZ8j6_-ev79GV08P5EeFEOQHsnE-WtwQCBPTxy5jrdlGuysUc78_LJUJ0SEkI5-E8ZvK1R8iAR5G41mQI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddtiedgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:us1-ZcjalDRehBSMykIY5ajSN10eNgNBw52_5KmpuDmFszp9fAjCqQ>
 <xmx:us1-ZYCblHyK4Gb_TsEtStlPH-Vmgb-n7IOBfDRG0JuAAhF6ibaLWA>
 <xmx:us1-ZdLR4Wk-i6UjHzvlzrodS5BHa5q31BxNLld-Pvl4ALAwXx_Heg>
 <xmx:us1-ZR53US1jVPDJMjKjEcgW8GTvLGlx4JLL0OzUUx7d1udKVbLIRg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 17 Dec 2023 05:30:17 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 1/8] firewire: core: adds constant qualifier for local
 helper functions
Date: Sun, 17 Dec 2023 19:30:04 +0900
Message-Id: <20231217103012.41273-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231217103012.41273-1-o-takashi@sakamocchi.jp>
References: <20231217103012.41273-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Some local functions just handles given argument as mutable, 
 thus it is preferable to add constant qualifier to them. Signed-off-by:
 Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-device.c | 6
 +++--- 1 file changed, 3 insertions(+), 3 deletions(-) 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rEoPl-00047X-Hs
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
index aa597cda0d88..16c32cb38f0f 100644
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
