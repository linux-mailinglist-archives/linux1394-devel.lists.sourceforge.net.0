Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD444B7EE50
	for <lists+linux1394-devel@lfdr.de>; Wed, 17 Sep 2025 15:05:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lj6W31GlRWpjozefhCwk6lf6IxgVkLWvwZEwequF7qI=; b=U4qWEu5VxInwk7I2vc7gK1m8+Q
	ZpL6H+I5aHg4ahaHalgRaVE+s0FJ/dhGPxpKA2y3fKiMnwzn8spm0CiLXuNoUTiPz0b3UsC+gSYsE
	Kjyc+QizpAlEojHDlArKmolFp3HXtigrpQXSXee7xzOZc/nBrU4DT2tznXX8lwrGPN10=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uyfeX-0004ld-An;
	Wed, 17 Sep 2025 00:04:06 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uyfeV-0004lJ-4o
 for linux1394-devel@lists.sourceforge.net;
 Wed, 17 Sep 2025 00:04:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XqttZHgRieOanhNfA33PuK7ta9Fx7p7mI7X1kqv62mA=; b=Ag0t15E6WTWw+MBFi38yPOtty+
 HgS/l83oZjY48gekE1lneIk1h6FufJnI1g/iacwDg+F/TXHNtlAwOzjsN34z6Pk9+fnw+PuT2vS1/
 aBfi7XTKT/qd0/s5NFuwSRrKUQZiVYUH/SZYuiD+pBWQ7znhU4nRtUR+jSsCMAFhwHG0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XqttZHgRieOanhNfA33PuK7ta9Fx7p7mI7X1kqv62mA=; b=bm7x2SQFHfS71sgnliapYMBAOT
 uXeCKbnPMGPotiyni5vUODEJ/LPifELxalKQOsa+Wym36ji6XPh16mcD5pjEawEbKAet80z9r/QJo
 4QzWCyaUuu9UB7qY52NLCQcziKptxdWrffapXE9O7t54Hv61hbUxfCYrSuIY5G2Uub44=;
Received: from fhigh-b5-smtp.messagingengine.com ([202.12.124.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uyfeV-00046a-G7 for linux1394-devel@lists.sourceforge.net;
 Wed, 17 Sep 2025 00:04:03 +0000
Received: from phl-compute-01.internal (phl-compute-01.internal [10.202.2.41])
 by mailfhigh.stl.internal (Postfix) with ESMTP id DA1E77A02CC;
 Tue, 16 Sep 2025 20:03:52 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-01.internal (MEProxy); Tue, 16 Sep 2025 20:03:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758067432; x=
 1758153832; bh=XqttZHgRieOanhNfA33PuK7ta9Fx7p7mI7X1kqv62mA=; b=r
 UgcRxSQ4z3m+mlziZaCWhACddgP3MEA/egOHo5LXeoq54zPTB2qtCWgCczLcK0JF
 0PPgruK72QwUbxYzWPLzk/mca93JNL1ABJWLx7lW8Tq8rGdc9M77qBcy6FB6gcrr
 z3P6tZMssfJZswMQMMo8R6JxAWfplBRm0WQO+6cSX7Ge4Yhzso1jdrdy8c3GX/Iz
 BXSyRzHxP0CJUGLyCjOpFve7Qymn+iPujJMrXlkwQEgDg9XhPVfunjshk8WZ6+Aa
 gr/VIubtD8Ys/SJhzWuBP59bWRNhMRV9wkIsbPAr1voLDUPKVJmutUk53mDyeMkJ
 Q1Fr0BnUjMkzGANiBhcoQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758067432; x=1758153832; bh=X
 qttZHgRieOanhNfA33PuK7ta9Fx7p7mI7X1kqv62mA=; b=EJLml2t+hiCRdGGfi
 dGKjo/MpAzFwpElwRNNd09PL4aOurz2olycyrucf8xJHKKWejpYSqjy8/PzpmzLC
 yXLTNTtrI7CcOPHAzNPg3fcpSE8svQajokqGhUjTORnF+1blyPaDQSQkIHFOra3g
 qW1dQZEEmYRG1Dik1jUcaBbnAV65D4ySRTXm365BV5uD8ql2w5sC2gx1NXfofLJb
 QiknCkcItJ7oKFQo6eQJzy/k8ZHTk6CgKEljWEnnO7eg5cy7jYDHQRU7NHeKx5mm
 PxrcTWJwFhJorsPMs00lNW8daI57AhfYiRjiff3VVXU/GwecO++dDC8ZkuqglxY3
 HqSVg==
X-ME-Sender: <xms:6PrJaO-AdfFoxXw-nDpaG41y6PWKomyRcPeL6Lw86Px-suXeOTDjNw>
 <xme:6PrJaHod-WjuH9iQqUrXn8PO2fLp7cTjSCR3uP1RAOgRBhNmIWKOcQ9o1wbxaVjTc
 cLdfsmuyiPMV37ipyU>
X-ME-Received: <xmr:6PrJaF8UnRhqUQHaF3LqFASxd1IAY42zrGOSSVHDBgG6XWe84F6eUs6DmzUdXm1nlaeUKHMGPgSJo0E0EFRA-TZRnQ2h5r2o5DzAomjsnDsgPg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegudeliecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:6PrJaDW5V6BDRXt7ba8DfBtkEFjuQWWoSMr7XzipqPBkOiNBqP2nLg>
 <xmx:6PrJaDBxbXqrxHBzD34E7jG90nNvVP18wAaaYaczOmzdj2EG2mTK8Q>
 <xmx:6PrJaMxZCKFY5knzHOk28I5HwtC73sNqvNOyrqPj7xCugrNey6-TFA>
 <xmx:6PrJaIAHFqqoyXp6zLfMLodouGH6aVfL6PO-5o3vkF8zQIwEvGrFgA>
 <xmx:6PrJaNi8aIGnnko0DFDwOgmoXPOjt_OgAJ3CMKaY9_fkDYNIRejboTAQ>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Sep 2025 20:03:51 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/3] firewire: core: schedule bm_work item outside of spin lock
Date: Wed, 17 Sep 2025 09:03:45 +0900
Message-ID: <20250917000347.52369-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250917000347.52369-1-o-takashi@sakamocchi.jp>
References: <20250917000347.52369-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Before (re)building topology tree, fw_core_handle_bus_reset()
 schedules a work item under acquiring fw_card spin lock. The work item invokes
 bm_work() which acquires the spin lock at first, then can b [...] 
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
X-Headers-End: 1uyfeV-00046a-G7
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

Before (re)building topology tree, fw_core_handle_bus_reset() schedules
a work item under acquiring fw_card spin lock. The work item invokes
bm_work() which acquires the spin lock at first, then can be stalled to
wait until the building tree finishes. This is inconvenient.

This commit moves the timing to schedule the work item after releasing
the spin lock.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-topology.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 8fa0772ee723..2f73bcd5696f 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -479,7 +479,6 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 		card->reset_jiffies = get_jiffies_64();
 		card->bm_node_id  = 0xffff;
 		card->bm_abdicate = bm_abdicate;
-		fw_schedule_bm_work(card, 0);
 
 		local_node = build_tree(card, self_ids, self_id_count, generation);
 
@@ -496,6 +495,8 @@ void fw_core_handle_bus_reset(struct fw_card *card, int node_id, int generation,
 		}
 	}
 
+	fw_schedule_bm_work(card, 0);
+
 	// Just used by transaction layer.
 	scoped_guard(spinlock, &card->topology_map.lock) {
 		update_topology_map(card->topology_map.buffer, sizeof(card->topology_map.buffer),
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
