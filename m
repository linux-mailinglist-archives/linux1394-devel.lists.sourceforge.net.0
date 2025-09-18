Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4816DB87530
	for <lists+linux1394-devel@lfdr.de>; Fri, 19 Sep 2025 01:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=a7/A2oJb0rWDQE4cDnSMXZvVOM1+wl6QLRGIsTNzGeE=; b=YL+ANEA+NGZEMCnnNBjUy+FGWU
	wmT2BL7tQH5vcKpLFP6fTx3mJu91O/+Xv0ovEMjca/26SYGHQX0YenYPYb1UxL96UO0m56Y7qB9ce
	rZr4YP5/TI87I6BRgJc34RGfdYyYltcXGfBzK4ZG525G+0tZkgdwkMiBxwLe/vYFX6zM=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uzNkb-0007Lj-8F;
	Thu, 18 Sep 2025 23:09:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uzNkZ-0007La-Om
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ejd4z6Y74LQMHrIhXYwar2zF5r9qzO6yTwePlxELzOg=; b=dUKhW3m8YnbnQeHj71yEV2V3WF
 kpiK2lg3innlq6zx+V+bo14dOBNtjHgQWkq4bqheOULDtAzOcm7/6nHpDz5hmn7VSLyt9oOc4N7qL
 hNTx/INf8LsKCk9JVbuZXgWtazn5956QysSy5FNlb9xoOgQhmNuya4Za4NpsHG9JE3L0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ejd4z6Y74LQMHrIhXYwar2zF5r9qzO6yTwePlxELzOg=; b=GFJ0X0FWtpOUY9oArXA94tznQR
 ucGfupMP6UBjJCNIonPMYxGX69//DPBK8gE+op1jb9zxN0u5mwqCVOmQoMZcAShfJfZFzXNsGXZvN
 LI8YaBJXm650YU2EnMeQ4sDWUZ+MisK2uOum9xkfEuWTr3yM25fm3QTdxtRnPC+O26c0=;
Received: from fhigh-b1-smtp.messagingengine.com ([202.12.124.152])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzNkZ-00017w-77 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:09:15 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 911667A02F8;
 Thu, 18 Sep 2025 19:09:04 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-03.internal (MEProxy); Thu, 18 Sep 2025 19:09:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758236944; x=
 1758323344; bh=ejd4z6Y74LQMHrIhXYwar2zF5r9qzO6yTwePlxELzOg=; b=D
 SKoN2XmwFgtTRw/nPdlG+86H3qTbMSbZq6VyTy9VRjFpCCMK5CkQE7SFCYybtaJP
 RrSvdC7uxk0pcApCdaqTiX6OnlG9XppAhHBByJAfGTenws8T0vMr85pdrjL4TeT+
 j4/OBP23gDmjslAbePQSwDUfXwSQLsEmn+uZvO8/jU1ivllERKwAiOFoUECwtMeB
 vzaneqPpw8sFQQRP32+p7Qr8z0uO1ED+UVC0xlbYiyDXR51aYVAAmWWk0FBissLr
 Op9lGsM8QIF1e/3VySlKafL+qfznWetj3UFxA104ZIaKvB3dblyWZiG8edBF+ULA
 Hr9faY52EwYM3aSb3rZiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758236944; x=1758323344; bh=e
 jd4z6Y74LQMHrIhXYwar2zF5r9qzO6yTwePlxELzOg=; b=CrIA6jhCsY/BxMck5
 ZPXroNW9UiQjAAPmfem7Sb6nUt5Kck+biSMOV62cggUrn/YNF9qom3jjeyTXGTIN
 hNad82VeJ/W2VZ/WxsXMYz/VlDeKow4kXU8EFp2Nz4SuxhT8WtcAeEtElFxu5gG9
 X/YLgm+Klxw/FI5zZLq3SfcY5w7k5JVTyjaai4Eg8tBbZF3atlfPi8V6xzenhpbs
 xSRhrDY3ZmjW8OI79YMpx+SZQAEo31BeG0GYd+L4+48792Qziv49AVo+a5yR9DT9
 OnmkPttLufBr542gac5hYPGoxIuAIwpjg2k2OR+6EIkqw41QZwYRZt4vB8684DiW
 0vD+Q==
X-ME-Sender: <xms:EJHMaHlR7DUTyoqz0YMs4-gqVQMIubpU-pdyisvaijVb1H_5fhufFA>
 <xme:EJHMaDzkIzpAdpcdn6icjHxuglv3w9o03KXp6WxZjLEOfdsidCnWfKd-lVX3NMh7t
 AMaYR7pAdNSf3uFP2M>
X-ME-Received: <xmr:EJHMaPkAPg31a3G9N0hKFlcWpDQMWqjt6atDWT1K7HI6fnjhKn2YGBcPXQXqVKAe-BRI6H5psibRB70AP6MAXYnJSxa3-qSYZi_4p1h-peMcka8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegjeeiudcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:EJHMaMfSZgfE7crULodLH7b7sWRuTu6LEG_zatSD1PRys0c4jPlDzw>
 <xmx:EJHMaFqAbBsJrPOWKJyR2j6bEIcuRG3dc1HCWIdXDWNUbjIZwfCZCQ>
 <xmx:EJHMaK6K-buK3fx6zXpUFF_jpRuR3BvOr_s1IrH8Jxd1lSoSMcf-hw>
 <xmx:EJHMaLrjCuEyfIwDOC6uAl--SSsTX8rB0ubYCjstgA8_6IMe_2jI5Q>
 <xmx:EJHMaDINeqGrqRvWGgxeA7VarVoNIKcbo4f3-VPNacZm_0FK9dcMNErg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 19:09:03 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/6] firewire: core: remove useless generation check
Date: Fri, 19 Sep 2025 08:08:52 +0900
Message-ID: <20250918230857.127400-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
References: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Two functions, fw_core_handle_bus_reset() and bm_work(), are
 serialized by a commit 3d91fd440cc7 ("firewire: core: disable bus management
 work temporarily during updating topology"). Therefore the gen [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uzNkZ-00017w-77
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

Two functions, fw_core_handle_bus_reset() and bm_work(), are serialized
by a commit 3d91fd440cc7 ("firewire: core: disable bus management work
temporarily during updating topology"). Therefore the generation member
of fw_card is immutable in bm_work().

This commit removes useless generation check in bm_work().

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 4fcd5ce4b2ce..ef00125fb01a 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -362,14 +362,12 @@ static void bm_work(struct work_struct *work)
 		if (rcode == RCODE_COMPLETE) {
 			int bm_id = be32_to_cpu(data[0]);
 
-			if (generation == card->generation) {
-				// Used by cdev layer for "struct fw_cdev_event_bus_reset".
-				scoped_guard(spinlock, &card->lock) {
-					if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED)
-						card->bm_node_id = 0xffc0 & bm_id;
-					else
-						card->bm_node_id = local_id;
-				}
+			// Used by cdev layer for "struct fw_cdev_event_bus_reset".
+			scoped_guard(spinlock, &card->lock) {
+				if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED)
+					card->bm_node_id = 0xffc0 & bm_id;
+				else
+					card->bm_node_id = local_id;
 			}
 
 			if (bm_id != BUS_MANAGER_ID_NOT_REGISTERED) {
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
