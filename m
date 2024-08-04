Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E67D946ECE
	for <lists+linux1394-devel@lfdr.de>; Sun,  4 Aug 2024 15:02:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1saasm-0005ds-DU;
	Sun, 04 Aug 2024 13:02:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1saask-0005dj-Se
 for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=96B7qG2RXUCqvEU76ArBM5B2OlW27Ke00tHiDtOnSak=; b=SsWDGpd7XGNiPsF007UaWU9uZs
 lYgLlYLmCd6K8J2QeWeirU5/Y8hPp802Z1myY3yBBl4VAx5NVQmRNzfWTsqofvRK31Roqob0g79oc
 MQmWlUSG9/hV9HZMPiiGvQ4p+SOpbLPrHI7H4uYxtD6/QHrJgsodqqxWmJxlPaUplgjI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=96B7qG2RXUCqvEU76ArBM5B2OlW27Ke00tHiDtOnSak=; b=EoCkUK+v9c3GoFKMpHPDwWfW5Y
 +9NThyZEZWWyRkHbx3wRhaieDdQy6+omYV8kMx6uO+AKXj2JcNKJdUGLjUITG8AQfvCFNkDZXejdQ
 b48B0zPANs5PlEQGfZTh/HI0KyQK7rslNFzfdigez9XfAvV0GX4fU9gvUfa91TrLdWSk=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1saasj-0001DU-Gy for linux1394-devel@lists.sourceforge.net;
 Sun, 04 Aug 2024 13:02:42 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id E1B411147F19;
 Sun,  4 Aug 2024 09:02:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Sun, 04 Aug 2024 09:02:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1722776550; x=
 1722862950; bh=96B7qG2RXUCqvEU76ArBM5B2OlW27Ke00tHiDtOnSak=; b=n
 qKC+niXkISymn3iskL0ys42fhe2+ytiQA8OUhgoRrZThgtAbMbd010xCuoWTX1b7
 dIXPgNjE89Ub/8Az5IiYGyGxOgl08XmJJ3SqxBgY8qdmOion9prMvt1IWzRTy4qm
 LiIpKtB5mgScrEvWVVlBX0JO1GHLbnVd7ndzeNOIxeRN6C4Ch5CE3bo7jHGn8kMm
 V3q6Gapyc3HJ6FFmcQB5LXLkYw2an1ha367Tn8dHOiK8OD42g0Jc1dMMunfc/JT9
 zSH8YgCxLhaHvf+WhNYiIE36mKEWmxE8PysB8Oa5+LvJPABOBSHbRX8ZwXn5QhPH
 /tDM07zWHBQRq4VHySmGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1722776550; x=
 1722862950; bh=96B7qG2RXUCqvEU76ArBM5B2OlW27Ke00tHiDtOnSak=; b=g
 XOK+yaLdLPYnJaufcWddCBJBO9+3pTlky1W+Clwki/ENP9KMktbxcRE8WMTEvLsE
 Wl8bgeJKud1myjKj58qe9zEzQ9+cdGVFP0lQP03r/9Vk916TwdnV1GeC4fSSEuzt
 68s8oGKjLL30vRA3aKQoZTHRuwHtsL2Y/UM5hBDQYZq3SuPTKuL1XqHEspwBnyf3
 1ameW/1WmyETcvpcm8q2K9uYzY/GNWA4bMLHRrKNCwId0P+IG1be8Zc2ZiXEPtPs
 xSA8E3zFPJEk4s2UQxDjqMVs3pKcdXYJloBAiCF5OTJ4Vqk0wUcwsWE12muKlWsm
 dnvMLzJSUjLnr/wSGERdg==
X-ME-Sender: <xms:5nuvZvwn-P_h9UDTEUUJpgOS1qAGQIpudhPBGZAG250aQ3caghjfYA>
 <xme:5nuvZnSK25yh8EGsGe4xQILT6Dx0KJ_IcfQd2DELssFuLcxhwa4Ohhn-u_fmxZV4j
 7n4y5z7fTjfcgCSs8M>
X-ME-Received: <xmr:5nuvZpWDLjpftTcPmDdnbpQOg2zSKsoAOo5ZMlC8HCSp-fccfhi8WJzAoxfh4np9VM5ow2qxXGQ3PsjtowL2kLYlDyVJLAuuIPDSJXZXlCxTcA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrkeeggdehlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejue
 dvgfduudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtoheptd
X-ME-Proxy: <xmx:5nuvZphQRViyafhRZZvn8axXkLOVLxjvpKoIJ3hULJY7Ez_NtCR_Xg>
 <xmx:5nuvZhClTzSRhfYSlMh83DTVPx0NdUG2UEpMxmCHF_IVIlaa1UR5Ug>
 <xmx:5nuvZiJE3F_v_2sdaZDqppzPNREqsf2i6CZozjxbCAzqWltV4TJLvQ>
 <xmx:5nuvZgAg9XP5BTXnhPkEtQ1tGriNXMAQ2ZzZOV_N5Q7XbPEvzkDA_Q>
 <xmx:5nuvZkNE5L3cA3MKQvJfcwdZXY43jXqOxr2Wrz6Ic4GspzS6wdwrHEpZ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 4 Aug 2024 09:02:29 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 01/17] firewire: core: use guard macro to maintain static
 packet data for phy configuration
Date: Sun,  4 Aug 2024 22:02:08 +0900
Message-ID: <20240804130225.243496-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
References: <20240804130225.243496-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The core function provide a kernel API to send phy
 configuration
 packet. Current implementation of the feature uses packet object allocated
 statically. The concurrent access to the object is protected [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.159 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [103.168.172.159 listed in wl.mailspike.net]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.159 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1saasj-0001DU-Gy
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

The core function provide a kernel API to send phy configuration packet.
Current implementation of the feature uses packet object allocated
statically. The concurrent access to the object is protected by static
mutex.

This commit uses guard macro to maintain the mutex.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index a89c841a7dbe..2a2cbd6e2f9b 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -494,7 +494,7 @@ void fw_send_phy_config(struct fw_card *card,
 	phy_packet_phy_config_set_gap_count(&data, gap_count);
 	phy_packet_phy_config_set_gap_count_optimization(&data, true);
 
-	mutex_lock(&phy_config_mutex);
+	guard(mutex)(&phy_config_mutex);
 
 	async_header_set_tcode(phy_config_packet.header, TCODE_LINK_INTERNAL);
 	phy_config_packet.header[1] = data;
@@ -508,8 +508,6 @@ void fw_send_phy_config(struct fw_card *card,
 
 	card->driver->send_request(card, &phy_config_packet);
 	wait_for_completion_timeout(&phy_config_done, timeout);
-
-	mutex_unlock(&phy_config_mutex);
 }
 
 static struct fw_address_handler *lookup_overlapping_address_handler(
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
