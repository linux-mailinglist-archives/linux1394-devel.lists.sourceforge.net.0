Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A67218FF851
	for <lists+linux1394-devel@lfdr.de>; Fri,  7 Jun 2024 01:51:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sFMta-00043n-Ce;
	Thu, 06 Jun 2024 23:51:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sFMtZ-00043b-Pj
 for linux1394-devel@lists.sourceforge.net;
 Thu, 06 Jun 2024 23:51:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rc+1mBnu6UDgWW1vu+fZekW80szq7fBM/FdiSLXLXbw=; b=hwUMDPwwaUN7RPbz1CmJCWOCME
 TCnn/ACL+Kepg+OCFARPM9pzPFiRd+3mcI9d5J9hPbYh3NG7qTLbZqAV3JU6Wh2r4zzyw1V8gswdW
 W4QkMf4dkPlqnNUttaXjj6wWyKZQdoYFqJCXNt3As0vH6wy1B1ajqhSX20ViBrIOfHoo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rc+1mBnu6UDgWW1vu+fZekW80szq7fBM/FdiSLXLXbw=; b=Sjbusth+KkK5n4bsSri+1ipHuM
 uaxUUsbJ/Ytrmd1gjA7j1IV/s9TZCkVYkuljzc+dSJFPN9LAwGhnVcHfqC+QFdjiDaNS4eVadetwQ
 TYhKAWzMYP006Y6V3XBA0VQ5kh1PMDsBmDiXjZaBoTAQbRfhG5o2sbU7wEwCofL+3ql4=;
Received: from wfout1-smtp.messagingengine.com ([64.147.123.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sFMtZ-00080g-W3 for linux1394-devel@lists.sourceforge.net;
 Thu, 06 Jun 2024 23:51:50 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfout.west.internal (Postfix) with ESMTP id ACF691C000A6;
 Thu,  6 Jun 2024 19:51:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Thu, 06 Jun 2024 19:51:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1717717903; x=
 1717804303; bh=rc+1mBnu6UDgWW1vu+fZekW80szq7fBM/FdiSLXLXbw=; b=Y
 oTiKpUslqABHDtoTz3Q7VWHYR/RWX1/8kV21pLQu0MDy+BYc6dgVd2ACVvIVm79K
 rf2r2pgNEDpF5p6lDmlXSGxduFcDT+VniWM8fDwUG018dO1MPyIb8GcjqGa6HkNK
 tHiBMF4SwkTuiFK+Wkfw6YbP4Va2GbqLYWAxqxONRAJ60MBzBcrAqriem4c7FTVn
 ZjSK63jsJU+4YLdgN7vRx4XVlnEFyDQwyZXcsjPlubUoohIhT/BsEeccxOCo5MeA
 1QlGNE71Wg6PuIOnCMw87unz1qJSSSIPr33vF+IZuu1tyiRCtlygsOg3kj9I1CQA
 0js2ojOotK1LwHnlJhcOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1717717903; x=
 1717804303; bh=rc+1mBnu6UDgWW1vu+fZekW80szq7fBM/FdiSLXLXbw=; b=A
 6Xot6D92xdN2RvVoe/JJR/8VnavaDrsL9u37RgPFjOf7zk+Hqce+gokzUdu57wrX
 x36yvGWGjCmMqh9NmZZiWneUOGJy2t7iBuc3CstjAmK0HJSiZI2rd3+hkE4FmG8n
 WaEfl7FgGFnFmNklHPuetiudRDnjHl1pbaCZlvcCWNgi+zstANPtWZXMawF1hnq1
 WSflNS5U57lhhRA95MzNOkCooQzFrSgl5zu3gM4teeCKAVbVQ4ZGcDL5Zixm/5eD
 SB3PRFnXAWd5l0sD84FIancKOmvdkQyrHTIxBSdURlHafABO8PUYq6o1897y8dPh
 l5oVBzPeYXFEqptNHM/EA==
X-ME-Sender: <xms:j0tiZsynmhPsj7kMD5vVe5Z7Xd6Nu-VUvpt5fij8CwyRt0xEaD387g>
 <xme:j0tiZgTWoCstio_ql6XSPOr_hKm_d00aN__9-Qad7Q2LCVnPSGk9VR4CFYudxpDRN
 RJrxpwxqN76R_0Hcsg>
X-ME-Received: <xmr:j0tiZuUP0876-GU_zged_0UIZdMl2m8ewIMeRqakPelxzvwSlf6rNZrNPYlBGImEi4c8o_aYBUfeyDOMpn0fkEdnXf4ponanZCJu4nIzcYt38Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdelledgvdejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtke
 ertdertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgje
 euvdfguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:j0tiZqjuJDJ7cWhrshjseTLr0GuYVOGLFKPGG_cW-vxM0531Ml1K5A>
 <xmx:j0tiZuBRSHeozBM6qqyKfMTB_EN9EuZL1RxL2oPHSg-ddE0Jo-5iqA>
 <xmx:j0tiZrK4wP6HBhBfdPT7ngeV6rKB-6S_hCGlIvKvrSTksMh6d-1vIQ>
 <xmx:j0tiZlAhtLCLiMPYS2VaZYydYMjC85xRed0KxUc0Gqg3dCaxUrP2aA>
 <xmx:j0tiZhO7V_2Mv7mjSstDDfTP8hYCR_MlZ3Cyw5D3tCeqxrk86_aJqJrq>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 6 Jun 2024 19:51:41 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/2] firewire: core: use inline helper functions to serialize
 phy config packet
Date: Fri,  7 Jun 2024 08:51:33 +0900
Message-ID: <20240606235133.231543-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240606235133.231543-1-o-takashi@sakamocchi.jp>
References: <20240606235133.231543-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This commit uses the added helper functions to obsolete the
 existing implementation for phy configuration packet. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-transaction.c
 | 22 ++++++++++ 1 file changed, 10 insertions(+), 12 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.144 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.144 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [64.147.123.144 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sFMtZ-00080g-W3
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

This commit uses the added helper functions to obsolete the existing
implementation for phy configuration packet.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 6868ff17dc10..5b80ca9d6230 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -30,19 +30,12 @@
 
 #include "core.h"
 #include "packet-header-definitions.h"
+#include "phy-packet-definitions.h"
 #include <trace/events/firewire.h>
 
 #define HEADER_DESTINATION_IS_BROADCAST(header) \
 	((async_header_get_destination(header) & 0x3f) == 0x3f)
 
-#define PHY_PACKET_CONFIG	0x0
-#define PHY_PACKET_LINK_ON	0x1
-#define PHY_PACKET_SELF_ID	0x2
-
-#define PHY_CONFIG_GAP_COUNT(gap_count)	(((gap_count) << 16) | (1 << 22))
-#define PHY_CONFIG_ROOT_ID(node_id)	((((node_id) & 0x3f) << 24) | (1 << 23))
-#define PHY_IDENTIFIER(id)		((id) << 30)
-
 /* returns 0 if the split timeout handler is already running */
 static int try_cancel_split_timeout(struct fw_transaction *t)
 {
@@ -480,10 +473,14 @@ void fw_send_phy_config(struct fw_card *card,
 			int node_id, int generation, int gap_count)
 {
 	long timeout = DIV_ROUND_UP(HZ, 10);
-	u32 data = PHY_IDENTIFIER(PHY_PACKET_CONFIG);
+	u32 data = 0;
 
-	if (node_id != FW_PHY_CONFIG_NO_NODE_ID)
-		data |= PHY_CONFIG_ROOT_ID(node_id);
+	phy_packet_set_packet_identifier(&data, PHY_PACKET_PACKET_IDENTIFIER_PHY_CONFIG);
+
+	if (node_id != FW_PHY_CONFIG_NO_NODE_ID) {
+		phy_packet_phy_config_set_root_id(&data, node_id);
+		phy_packet_phy_config_set_force_root_node(&data, true);
+	}
 
 	if (gap_count == FW_PHY_CONFIG_CURRENT_GAP_COUNT) {
 		gap_count = card->driver->read_phy_reg(card, 1);
@@ -494,7 +491,8 @@ void fw_send_phy_config(struct fw_card *card,
 		if (gap_count == 63)
 			return;
 	}
-	data |= PHY_CONFIG_GAP_COUNT(gap_count);
+	phy_packet_phy_config_set_gap_count(&data, gap_count);
+	phy_packet_phy_config_set_gap_count_optimization(&data, true);
 
 	mutex_lock(&phy_config_mutex);
 
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
