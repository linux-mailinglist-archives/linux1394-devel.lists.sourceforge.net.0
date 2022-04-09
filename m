Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0514FA242
	for <lists+linux1394-devel@lfdr.de>; Sat,  9 Apr 2022 06:13:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1nd2T7-00063u-90; Sat, 09 Apr 2022 04:13:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1nd2T5-00063m-RD
 for linux1394-devel@lists.sourceforge.net; Sat, 09 Apr 2022 04:12:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5zDwX/FbrOkRF0QjGNj6f8q83zazNceR19vDeBTMloA=; b=SLo3VRmusZyHfXkMMX3brwX7Ia
 68nfduQ0xr+ZaLd4aIiHQIXgrCsEZG+QPU/32j4gIxHXQQcB47aCsNpxTYTQ7Gb/+5q0HuCdAsVV7
 nIE1ODLpMDhMZjDob3yT+e4n15X3Q55Uz4HwSjL+bAj1TkovNr77YVS10wJwL+tdBe6g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5zDwX/FbrOkRF0QjGNj6f8q83zazNceR19vDeBTMloA=; b=dvsTD5tW9OHwqwDt1A7Te3nmvs
 Xzd5j0vR2o61t0fog8Bon9WzlnCCfj6UPlqw+qUB+GtbC3Ry2SSM7nasFUkKDYKPYaD7yXbcbyIP1
 fWyPv7bOp8COLsRXF6of/HflTa1G/X1Kf8dubgiyNin4lUmul6CJbBHFNKiQm8YT+8Ws=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nd2T4-00086q-6P
 for linux1394-devel@lists.sourceforge.net; Sat, 09 Apr 2022 04:12:58 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.nyi.internal (Postfix) with ESMTP id 71E765C0182;
 Sat,  9 Apr 2022 00:12:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 09 Apr 2022 00:12:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm1; bh=5zDwX/FbrOkRF0
 QjGNj6f8q83zazNceR19vDeBTMloA=; b=bD8J+yA2MnFyFascHFQBhJq72a4Ttb
 ++tMUV4n4/zWS5PQflzU2vCJKwKGkhrfJ66UZRY/wJdkhL7a7tglOdQFZx4tsTUC
 FI45oQNrnPCV+Pa3cl+sHhsoMiyb37jfs1b2pGAohaj2OcqFf/nbDBFu58TyvvQS
 oIQGF1e11Ar6SyXG+aRV79V/HZ2p2UHLCi9N4naWfGoOSRjFlr09pkDG5ELL71bP
 yk4nYAIBr26r2obTzLzUjMfjnsFRxi7DTtiB6b6710gy5R0JbZL1sk6fYUw1afmV
 W0LSPiOW73qSBzSBYcDQAeRP45J68+B/JTY0aZgjCcNK/lqkzvMAXb8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:sender:subject:subject:to:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=5zDwX/
 FbrOkRF0QjGNj6f8q83zazNceR19vDeBTMloA=; b=OE7mjufOKEVscu+dEgNdo8
 2WVCKnKAXRL1RJq7wDGLCGmjqlF0OrV9m5mQ6O6ECkTf5G5D6qvnwqR2Az8sM3xt
 tMLp3utiLopMWwpA8O9m5whrabomlG64K1PbZlTNK4uOP9ppOrWsXcKCI8PJCZ8Q
 9RxBfa7dHuHnucuz3UGZ0r6XL9O0MomyAt1KHtHeiZE9Ri9ARuE8h9dsi/sumkco
 1GXAeTDP78ON+bJqz5w14Qp+fwsknAEIMI3BTVdoTVOgZvDrnJy37zEHx4yjcBxC
 jj6dngzYCTuHenp0SNcyvidG5Pp28qTSQkZrWlv8sIHrodLbIb4Mm2P8KBAy1tHg
 ==
X-ME-Sender: <xms:wwdRYuvLCwbgouwG_HQx7apxXeemNA3_1WGGY2tsT_3svMielII-aw>
 <xme:wwdRYjcR1TpQHmXoE9mFQ-LxFYDDy_dpaGyfNPNHcStNsOu4myXo7J6D0TrU143DE
 zbbrkE-YHRyMZIexko>
X-ME-Received: <xmr:wwdRYpwWRALSpS9xZoTElVzjpafXPhHWvLZdX2V3yKx5uRNXYZfJxV7ua3YMw_UTaPYUxNQ1Y5pwDuhSRIUoQu_pTdQ7kQK55nJoRtkhO6BpS8oAJD4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudekuddgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepveefffefke
 etgfevgeefleehfffhueejtdejveethfekveektdejjedvtdejhfejnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:wwdRYpM0AYh3iwSAGY0RznMhCtHqdiDMMlLdUeEKkLodJVjEHVDarQ>
 <xmx:wwdRYu84hytIuXksNyPAkAjRQeM8HMhbuCzfiVncbuGOAr-aF4hAtA>
 <xmx:wwdRYhWU9ER_my29_F7wur7h2ut_yHSPPXC_WQHDVi5wytJhLTAYjA>
 <xmx:wwdRYiaDiavC3MzNHMp9scYr3_GadaLl6ANlzNXxdfHx1cCIyVB6Hg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 9 Apr 2022 00:12:49 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: tiwai@suse.de
Subject: [PATCH 1/3] firewire: fix potential uaf in
 outbound_phy_packet_callback()
Date: Sat,  9 Apr 2022 13:12:41 +0900
Message-Id: <20220409041243.603210-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220409041243.603210-1-o-takashi@sakamocchi.jp>
References: <20220409041243.603210-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Chengfeng Ye <cyeaa@connect.ust.hk> &e->event and e
 point to the same address, and &e->event could be freed in queue_event. So
 there is a potential uaf issue if we dereference e after calling
 queue_event(). Fix this by adding a temporar [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nd2T4-00086q-6P
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 Chengfeng Ye <cyeaa@connect.ust.hk>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

From: Chengfeng Ye <cyeaa@connect.ust.hk>

&e->event and e point to the same address, and &e->event could
be freed in queue_event. So there is a potential uaf issue if
we dereference e after calling queue_event(). Fix this by adding
a temporary variable to maintain e->client in advance, this can
avoid the potential uaf issue.

Cc: <stable@vger.kernel.org>
Signed-off-by: Chengfeng Ye <cyeaa@connect.ust.hk>
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-cdev.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-cdev.c b/drivers/firewire/core-cdev.c
index 9f89c17730b1..708e417200f4 100644
--- a/drivers/firewire/core-cdev.c
+++ b/drivers/firewire/core-cdev.c
@@ -1500,6 +1500,7 @@ static void outbound_phy_packet_callback(struct fw_packet *packet,
 {
 	struct outbound_phy_packet_event *e =
 		container_of(packet, struct outbound_phy_packet_event, p);
+	struct client *e_client;
 
 	switch (status) {
 	/* expected: */
@@ -1516,9 +1517,10 @@ static void outbound_phy_packet_callback(struct fw_packet *packet,
 	}
 	e->phy_packet.data[0] = packet->timestamp;
 
+	e_client = e->client;
 	queue_event(e->client, &e->event, &e->phy_packet,
 		    sizeof(e->phy_packet) + e->phy_packet.length, NULL, 0);
-	client_put(e->client);
+	client_put(e_client);
 }
 
 static int ioctl_send_phy_packet(struct client *client, union ioctl_arg *arg)
-- 
2.34.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
