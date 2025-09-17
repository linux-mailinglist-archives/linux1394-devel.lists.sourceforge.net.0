Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E64C8B7E00C
	for <lists+linux1394-devel@lfdr.de>; Wed, 17 Sep 2025 14:39:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9wbmyJPrFiqaUs0qse2aoC5zkwnEnQaochbH+rB84U4=; b=Xf83unqAmf79M5pnSjsJ0XnY7+
	l65yCFvHjO71aEFILaEf/h289F8UdqOhG8TToYjywAjTRCExusAdOLnpab2QTJS3ehK6NhHmhH0zE
	090xqU0gi+sNRWNTFntQZZ/tEvBC0z46X4gGZYdwVCD21wVP8Lf32bQFIw6HGfz8VuIE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyfeU-00087V-PC;
	Wed, 17 Sep 2025 00:04:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyfeS-00087D-NV
 for linux1394-devel@lists.sourceforge.net;
 Wed, 17 Sep 2025 00:04:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=t1f8CJyyveNUQMePWwDrGPs1RuYxKALIwyp3EIOyP3s=; b=EvYZhs61upK+SxjR5Vs/b3vzQY
 07pqwtMcEP95CdrF5Cysg6aNGo8AaigwLGynmU6efgkBs41w5bJ2AcwNHHd53FuqInPXSuISK2lX1
 1jFOLGtKS/kD95Tey/ikBgpU+uQW2g3TlpOfFzyvrXKOQaPze2/jIil6Rq4CoGHjc9e4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=t1f8CJyyveNUQMePWwDrGPs1RuYxKALIwyp3EIOyP3s=; b=XB0xYX3w2qVVCDco4MLmF1+RVG
 HmctxRf/GEhWRmwiZJWyMFTLBmra/lsyVJDkGQa0fiCVGcyIFihyc0z2XVHcGTE/LQKavqCV4rt0T
 xGHVdywsrZ1bGH80klvFIjLvBHtMJs0MWjJKu0lms1HAwQUhUx9JXMH09Lomokfyl97g=;
Received: from fout-b4-smtp.messagingengine.com ([202.12.124.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyfeS-00046R-75 for linux1394-devel@lists.sourceforge.net;
 Wed, 17 Sep 2025 00:04:00 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfout.stl.internal (Postfix) with ESMTP id 8F31A1D002D9;
 Tue, 16 Sep 2025 20:03:54 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-11.internal (MEProxy); Tue, 16 Sep 2025 20:03:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758067434; x=
 1758153834; bh=t1f8CJyyveNUQMePWwDrGPs1RuYxKALIwyp3EIOyP3s=; b=g
 8DE4dAS/6d0ZXY23sw71l52STE+Q6tXXouUxyOtDANd+GPRCWmCDj73ZlwIaRAaR
 27wHIpcrGXgXurwGqbSiYEMtFMpp6ZAj2wfV5TLJhH9BA2cG3Io+328k2ygVEmWI
 zIMVPDX84PW+GLIgXPGh/P8zpmZMlfzvPFAsGcdQ1K82wVmRwBhAI46foMouUv8d
 lPyh6Q7d9uLEuYi6QaNVPX7CGaWi3NJdA7cjeXXYiF5vFIifPQXrQ8XjF6caceOk
 l1Is64bIzH59yq5liJOhFVRV4ZPsJ1pIU8z0Qi49ie+PWC5sKyDj4DNxb/zAJgLN
 sRsJE1Wi9ioGwkaQHNZFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758067434; x=1758153834; bh=t
 1f8CJyyveNUQMePWwDrGPs1RuYxKALIwyp3EIOyP3s=; b=Ucg87op8JBpn0QZZU
 ye+OW+63PIj8ug0eZulQ9n8T/eBHuKhfz698Rue7qKuWy+RTsNHQ9BiMZrZYHZWU
 2D6MBBjevjw867CGApAQYyOFUlD5gyjlUWbP2EOso//mNv0HE3vDqq4ZA9L5I54K
 YqDH0HeJT8JxmT4Uwx+AlkvaFOWiRxAb993kPvMJMLn2HOqba+uaAazy0woNVJg4
 Dg6rzCMIzdsvnT7V3z2JsK6B+hxeMHa8XHYO32/4SsaV9TCm3O++CteoN3YRsG5D
 xYTNzYPrucHlz2VkvvXkE465mEd8JbSVZ3qc3+lcwIa9PFaZkkMEDxtN6DMp8iri
 XCzrQ==
X-ME-Sender: <xms:6vrJaG4HibUMs9kZu-aPSJKpUrXLqvrVk2ocb8RtDov4NIKiz3lCOw>
 <xme:6vrJaI17M4-DAcGPlz2g2Iay8uvhIz4K2fCMLrwAmCP0myX_g9gAeGRMWg_X-G4pK
 PV760cD7PskfheYm8A>
X-ME-Received: <xmr:6vrJaHY0gAOc3KgokmJs0u0rDNNVVKDb-amU8aNkFPF5fKHzd0DKZHXSEaxPLDtUqtjxS_7gvy_xOL_Kcyl-ejyyR3zYrQmqTwQW4_qTAKEmzQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegudeljecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:6vrJaAANFTn5gHsGVblt2V-bC00fpYjaIEZ5Oz4LnAjmOxblvMkSgw>
 <xmx:6vrJaJ-AduVaHFdQnt0B9ThgN7CWNZQMKGMAaC8qdIiKh9TWswJ_IQ>
 <xmx:6vrJaA-mFdT8qUeM1Yv_X5Y0flOSRiEYPkjajBUyEPmhEfDq6ybxmA>
 <xmx:6vrJaAeyB8Eh2OKyYfytuiMut-3JUsw8c7hZHNkR09DWjmbz09nljw>
 <xmx:6vrJaI8U0IRsDVB6h8VU4xvLDWBaljKuo2rF7j-gWFDIs0kY6qXu6biY>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Sep 2025 20:03:53 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/3] firewire: core: disable bus management work temporarily
 during updating topology
Date: Wed, 17 Sep 2025 09:03:46 +0900
Message-ID: <20250917000347.52369-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250917000347.52369-1-o-takashi@sakamocchi.jp>
References: <20250917000347.52369-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  When processing selfID sequence,
 bus topology tree is (re)built, 
 and some members of fw_card are determined. Once determined, the members
 are valid during the bus generation. The above operations are [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uyfeS-00046R-75
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

When processing selfID sequence, bus topology tree is (re)built, and some
members of fw_card are determined. Once determined, the members are valid
during the bus generation. The above operations are in the critical
section of fw_card spin lock.

Before building the bus topology, a work item is scheduled for bus manager
work. The bm_work() function is invoked by the work item. The function
tries to acquire the spin lock, then can be stalled until the bus topology
building finishes.

The bus manager should work once the members of fw_card are determined.
This commit suppresses the above situation by disabling the work item
during processing selfID sequence.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 2f73bcd5696f..90b988035a2a 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -460,8 +460,14 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 {
 	struct fw_node *local_node;
 
+	might_sleep();
+
 	trace_bus_reset_handle(card->index, generation, node_id, bm_abdicate, self_ids, self_id_count);
 
+	// Disable bus management work during updating the cache of bus topology, since the work
+	// accesses to some members of fw_card.
+	disable_delayed_work_sync(&card->bm_work);
+
 	scoped_guard(spinlock, &card->lock) {
 		// If the selfID buffer is not the immediate successor of the
 		// previously processed one, we cannot reliably compare the
@@ -495,6 +501,8 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 		}
 	}
 
+	enable_delayed_work(&card->bm_work);
+
 	fw_schedule_bm_work(card, 0);
 
 	// Just used by transaction layer.
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
