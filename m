Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E90815E7E
	for <lists+linux1394-devel@lfdr.de>; Sun, 17 Dec 2023 11:30:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rEoQ2-000813-OD;
	Sun, 17 Dec 2023 10:30:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rEoQ0-00080i-Ok
 for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GNxJtnuCREIc3LKzjvgp8+1jNOAQR7t6+8ZOIjGQVww=; b=FVOqUYZZHPiZAYgPZErncLYHpR
 RhO4YjDjazaxLSGYCHL1ppIkD9OCfdwdMsgWi8ghOLC9lj0sXF8iAMnZI5SWEP5qkJ5aq6eKm3jeX
 K+xl2flQC2Y53FHhDKGLsg3DqU4NPtU/jcTQM8UoOV0/0jEnCKHwDCLAqLNz3gxpToJE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GNxJtnuCREIc3LKzjvgp8+1jNOAQR7t6+8ZOIjGQVww=; b=l/Bs6HuiWbE+DB9RiFw08qdlzm
 te54BXL4M6JDDo2NeIZJd8xTeifQPte/e4oDTLbxNbLzBrDKQG0x+C2U0uEax7Skxcx2WwygPQZf3
 8LXo7Oy/ZxIQFVnCNXZFHKMmlsZBjPbfrPcIU6bfy2Qw7Hy8lScL5NJg3I2TsfonM2ko=;
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rEoQ0-000498-HL for linux1394-devel@lists.sourceforge.net;
 Sun, 17 Dec 2023 10:30:45 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailout.nyi.internal (Postfix) with ESMTP id DDB6B5C0124;
 Sun, 17 Dec 2023 05:30:29 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Sun, 17 Dec 2023 05:30:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1702809029; x=
 1702895429; bh=GNxJtnuCREIc3LKzjvgp8+1jNOAQR7t6+8ZOIjGQVww=; b=E
 O4DA1b28hTv8vuM4/sfmjKgMAmMuWZrqriu/6NQl9JMM5QC+Aszgzs6m+lldEYBx
 m5jUtQBlX109BSNbB2vKL8PWSpRoKc/QdtFNNl3P1SatbZaiAB7d9/eTejJr54WT
 ZHlYcCt265eUmfwTSELEDlx3qqe55yBfmEnoqNSu/QM3j5Ix24G7iFo1XKOTIO1R
 +FVRGBCpbT3PU7d2SwY+FNQKzYOd1uh35SQ3UGnJ8TAtA1h0P8nvo7HksbY3VpTi
 5w3L1BGaWu4sevgVW7nF4/kT/fKhGkHuhHxwgu5oNvAWhyWRzVx8MddzAwhkEfJf
 xuqq+ugOhciCWpdsF3xaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1702809029; x=
 1702895429; bh=GNxJtnuCREIc3LKzjvgp8+1jNOAQR7t6+8ZOIjGQVww=; b=y
 Wh4dFAtNDIymNi8RauPDjeCH6rnCALqBmJE+ydH7D4LPZuQuI/OD3Yhqrjs9afSd
 2h+XE9SxC51Yr1HUomOrvTquFKawgjzrfZyh5qmfNzFG+ZqHQ06ciPZw/uXwT47B
 tso1Oyx6oHJlvi2WvgzmioryQwpADJCiM1xiG3h7W03iVZC8LWEb5qFKSj58aJ4C
 wbSrdX/g8GWwcA82ekzIx/NP5idKnXgQB6q9ILS2WBDOH1CYoGh6X6Ddfu1DK70u
 X16wb4jiQjA9mf0p1/Q9dzEeJjS/rHZeSEkQfW9UM/OEjhZsNtXdymqtJrw6pHWI
 0wWbP73aIo57hGQcgbK+Q==
X-ME-Sender: <xms:xc1-ZSvaIljZNAjFN4HaDurIGA-n9HwsHfQCXUiMi28w9bae2HSxWg>
 <xme:xc1-ZXeic4hJFsRlNoY8XJjRxCYxjq_Qtle3_D5tQVp_Qa1hz20O_YUt7tAZhEk1M
 MfPCgFc0cWwCVBItB4>
X-ME-Received: <xmr:xc1-ZdxuR-wSnkk9yFJKhfcs940lVuv723C5aE4LgqVG8OqLM_TabU1utWd971Ntz0I8_TvRQZeegK-Yod2CwHPg_eq2uOprAoW1a31rEwasDzU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddtiedgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:xc1-ZdNHtweWftRuwm4nl58gBGSzT6zYjYk1G89yOsxNgAF50YU-HQ>
 <xmx:xc1-ZS_rWGAIh5465vPpUjJLnfbBXYKvI_Iyi8MbwFYu2FmDMr7W-A>
 <xmx:xc1-ZVX5Yvv5QFU6MI4isJ8VucguY2eRqRPsiaGgAxjf3SndqEuzYw>
 <xmx:xc1-ZYlaEl4tuXcwMDtHXIGekdYXMuWHiZAosFwohbs-Y_4oI0_e3w>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 17 Dec 2023 05:30:28 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 8/8] firewire: core: change modalias of unit device and
 loss of backward compatibility
Date: Sun, 17 Dec 2023 19:30:11 +0900
Message-Id: <20231217103012.41273-9-o-takashi@sakamocchi.jp>
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
 Content preview: As the last part of support for legacy layout of
 configuration
 ROM, this commit traverse vendor directory as well as root directory when
 constructing modalias for unit device. The change brings loss o [...] 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -1.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [66.111.4.27 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rEoQ0-000498-HL
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

As the last part of support for legacy layout of configuration ROM, this
commit traverse vendor directory as well as root directory when
constructing modalias for unit device. The change brings loss of backward
compatibility since it can fill 'mo' field which is 0 at current
implementation in the case. However, we can be optimistic against
regression for unit drivers in kernel, due to some points:

1. ALSA drivers for audio and music units uses Model fields to match
   device, however all of supported devices does not have such legacy
   layout.
2. the other unit drivers does not use Model field to match device.

The rest of concern is user space application. The most of application
just take care of node device and does not use the modalias of unit
device, thus the change does not affect to them. Although, systemd
project gets affects since it includes hwdb to take udev to configure
fw character device conveniently. I have a plan to work systemd so that
the access permission of character device is kept for the previous and
next version of Linux kernel.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-device.c  | 21 +++++++++++++++++++--
 drivers/firewire/csr-api-test.c |  2 +-
 2 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.c
index f7a11004f972..e04486c5e0eb 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -153,8 +153,25 @@ static void get_ids(const u32 *directory, int *id)
 
 static void get_modalias_ids(const struct fw_unit *unit, int *id)
 {
-	get_ids(&fw_parent_device(unit)->config_rom[ROOT_DIR_OFFSET], id);
-	get_ids(unit->directory, id);
+	const u32 *root_directory = &fw_parent_device(unit)->config_rom[ROOT_DIR_OFFSET];
+	const u32 *directories[] = {NULL, NULL, NULL};
+	const u32 *vendor_directory;
+	int i;
+
+	directories[0] = root_directory;
+
+	// Legacy layout of configuration ROM described in Annex 1 of 'Configuration ROM for AV/C
+	// Devices 1.0 (December 12, 2000, 1394 Trading Association, TA Document 1999027)'.
+	vendor_directory = search_directory(root_directory, CSR_DIRECTORY | CSR_VENDOR);
+	if (!vendor_directory) {
+		directories[1] = unit->directory;
+	} else {
+		directories[1] = vendor_directory;
+		directories[2] = unit->directory;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(directories) && directories[i]; ++i)
+		get_ids(directories[i], id);
 }
 
 static bool match_ids(const struct ieee1394_device_id *id_table, int *id)
diff --git a/drivers/firewire/csr-api-test.c b/drivers/firewire/csr-api-test.c
index 779146d0cfba..753d8e83b8c2 100644
--- a/drivers/firewire/csr-api-test.c
+++ b/drivers/firewire/csr-api-test.c
@@ -178,7 +178,7 @@ static void csr_api_legacy_avc_device(struct kunit *test)
 	};
 	struct device *node_dev = (struct device *)&node.device;
 	struct device *unit0_dev = (struct device *)&unit0.device;
-	static const int unit_expected_ids[] = {0x00012345, 0x00000000, 0x00abcdef, 0x00543210};
+	static const int unit_expected_ids[] = {0x00012345, 0x00fedcba, 0x00abcdef, 0x00543210};
 	char *buf = kunit_kzalloc(test, PAGE_SIZE, GFP_KERNEL);
 	int ids[4] = {0, 0, 0, 0};
 
-- 
2.39.2



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
