Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 31082B87537
	for <lists+linux1394-devel@lfdr.de>; Fri, 19 Sep 2025 01:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lS/r9NPUjEijPtxDvNWiNpseUaYBMVKDLbAenGD/67s=; b=FHfBg9RZpCmH1dYFiHM+h/Snt0
	B4k+VPATljf++LT1/gMszewrJ77c2EDaz4kRVF7FaGHhp+C/UVkB/Rhyyb2YFSC2sKiZl0dkvBu0m
	+eMMoO1LoQthEHo1RW45AIWqOSn6roO1H4iRNvXe/ueuZNHbIc2jQ5tz69f36r420Cqc=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uzNkW-0007ci-TU;
	Thu, 18 Sep 2025 23:09:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uzNkW-0007cY-7N
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:09:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1bhCuPFgP4C1oxsw4LyiUdUqGNWaw/azPwPIYtQV6D8=; b=bhvB6V/MKR5g40EOp/Ce+JzsCB
 XVWxJirGP7Roelhku1rAEqhqoUlvqEYJpxJMF68QCcZFJa+gYgZzPuhYBPLxo3YVrCUsN/Kwfk3JQ
 ECn53ZeERTWdcxPuRDrtibBAGWl7YnbtnYHzGdZr7g+5wmuvQCL3W4fbLW9bK3yJ5qyE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1bhCuPFgP4C1oxsw4LyiUdUqGNWaw/azPwPIYtQV6D8=; b=mtDR1oQyfkZ7dIfv5kS7cTALhz
 z6ELWeR8za1AB3lx5MxZvs2k1pTi7fzo4HdiA4t4Ia1sBV3lk+GvD6hTOFgqNelMPpnwq7FLUsWvx
 uiJPkmk1jXuVm/QlbvVdNWzKKH9kzFfBvX5bAupFjbl6OYIoCf8cljU/p1SZFmIbYq+I=;
Received: from fout-b1-smtp.messagingengine.com ([202.12.124.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzNkV-00017X-KX for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:09:12 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.stl.internal (Postfix) with ESMTP id 1FDA41D002D6;
 Thu, 18 Sep 2025 19:09:06 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Thu, 18 Sep 2025 19:09:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758236945; x=
 1758323345; bh=1bhCuPFgP4C1oxsw4LyiUdUqGNWaw/azPwPIYtQV6D8=; b=f
 asvvCTm+9KHFmKMnoYAzin9td+QeKi2F4e8OGE8+B0xtLVsu0ESa4WRWoat9p+t/
 OM+/4wWiYzqRMz2LmkmyPkRwqFSovtyyb19ox7TkWwHI9z656u3zjo+2bRPDjyhM
 5MOXxk6nSsljh7WsI3UEOsXu5Wj8tbh5l4B6Oy4+DmiT5aTTKvuVdhunzZd0HdZK
 jMsG0kaqcI02v+oagi9VcUvYpz/W6BFhmaCLMi+5STOxnpZ/lNiS/bZVTkY6PmJT
 SbbQYqwmzhZ9jOjh0tfvVK78T2ejs8zP3qRQ/xZb5KDJhvDj0z8doqzp8LGBXfpz
 N4Rrez1QpTOa/7Nsde51Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758236945; x=1758323345; bh=1
 bhCuPFgP4C1oxsw4LyiUdUqGNWaw/azPwPIYtQV6D8=; b=mHRS8UTFbfP8EnZAo
 9zuaaWrwB+iv9gYShO98xqAHyuhAOcCQ4a+2y2UGZpPdJpeU+8Kqe+0H4JBXqI0L
 7OK6/LTrx9vmxrm++JcJmaJ60QdoiLoKAoWDGPYWn3TRZhSqiA1nlctvTZ2KGRod
 S8bkMfc2+kWhBM6efPK3yd2rDAkBxP4zjd2uFlmIQBuEQNRxK4Kyvu229HFDHtmT
 WS8dbWw9FdcWNxNkFuswSgrkN5WPmRSVo5+rFuXPtLPGr5SANaT/RoAtw8ONgI/Z
 2v7tpwUUmGp4dITYi7S7nASd+6BOqN5L88be7pJGkLryZXQ+YkxRa8LkUsZiIwVN
 xCVMg==
X-ME-Sender: <xms:EZHMaF8y3SBjeLlzfBv_yyN5kdo1ZZ8z6N70FJNWxYFeeffEMlCVeg>
 <xme:EZHMaCpKynTUMArmFDXUSdWJmSNlmCAFGvZdEVJotQpNx6u249LyeKnlGvGnOrSLF
 jlqs1k6wRJtyBhgJpI>
X-ME-Received: <xmr:EZHMaE87E-F2lAu3I5EGH5UK5zDcC0OFnRPrJO3LZ7QhyfG3monhGwKiO4BZNiGwGhFFsVMgXo99fcZfS3-0yGNtmWeDkDLiUxc9VFBJEhtiigE>
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
X-ME-Proxy: <xmx:EZHMaGXt4SZG1Zurts0QnN8nfxOZk7njcX3al6NCWQ0u1ZsIvvsuYA>
 <xmx:EZHMaKDJaKp2dohZCuqbzbB_p013y70DArbYbmxFFlkqDrCIJEDjiQ>
 <xmx:EZHMaHyhwYeqgSJSzIwj8VTFfvW0xIEs9zHJeKzKNIlCheYuMb9P5A>
 <xmx:EZHMaHCtoROFBx4h-CYlpm-XxDXfT1HJMN3ERhbtQFxMH2_XDkXJPA>
 <xmx:EZHMaMjt8aI4LRToaeoFScg4b21YKdYsTHO2IM02-yObDXCYjFSrmERV>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 19:09:04 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 2/6] firewire: core: use switch statement to evaluate
 transaction result to CSR_BUS_MANAGER_ID
Date: Fri, 19 Sep 2025 08:08:53 +0900
Message-ID: <20250918230857.127400-3-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
References: <20250918230857.127400-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The result of the lock transaction to swap bus manager on
 isochronous resource manager looks like an ad-hoc style. It is hard to read.
 This commit uses switch statement to evaluate the result. Signed-off-by:
 Takashi Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-card.c
 | 50 +++++++++++++++++ 1 file changed, 24 insertions(+), 26 deletions(-) 
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
X-Headers-End: 1uzNkV-00017X-KX
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

The result of the lock transaction to swap bus manager on isochronous
resource manager looks like an ad-hoc style. It is hard to read.

This commit uses switch statement to evaluate the result.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 50 +++++++++++++++++-------------------
 1 file changed, 24 insertions(+), 26 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index ef00125fb01a..e9bf8d93f5b7 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -355,11 +355,18 @@ static void bm_work(struct work_struct *work)
 				CSR_REGISTER_BASE + CSR_BUS_MANAGER_ID,
 				data, sizeof(data));
 
-		// Another bus reset, BM work has been rescheduled.
-		if (rcode == RCODE_GENERATION)
+		switch (rcode) {
+		case RCODE_GENERATION:
+			// Another bus reset, BM work has been rescheduled.
 			return;
-
-		if (rcode == RCODE_COMPLETE) {
+		case RCODE_SEND_ERROR:
+			// We have been unable to send the lock request due to
+			// some local problem.  Let's try again later and hope
+			// that the problem has gone away by then.
+			fw_schedule_bm_work(card, msecs_to_jiffies(125));
+			return;
+		case RCODE_COMPLETE:
+		{
 			int bm_id = be32_to_cpu(data[0]);
 
 			// Used by cdev layer for "struct fw_cdev_event_bus_reset".
@@ -376,29 +383,20 @@ static void bm_work(struct work_struct *work)
 					allocate_broadcast_channel(card, generation);
 				return;
 			}
+			break;
 		}
-
-		if (rcode == RCODE_SEND_ERROR) {
-			/*
-			 * We have been unable to send the lock request due to
-			 * some local problem.  Let's try again later and hope
-			 * that the problem has gone away by then.
-			 */
-			fw_schedule_bm_work(card, msecs_to_jiffies(125));
-			return;
-		}
-
-		if (rcode != RCODE_COMPLETE && !keep_this_irm) {
-			/*
-			 * The lock request failed, maybe the IRM
-			 * isn't really IRM capable after all. Let's
-			 * do a bus reset and pick the local node as
-			 * root, and thus, IRM.
-			 */
-			new_root_id = local_id;
-			fw_notice(card, "BM lock failed (%s), making local node (%02x) root\n",
-				  fw_rcode_string(rcode), new_root_id);
-			goto pick_me;
+		default:
+			if (!keep_this_irm) {
+				// The lock request failed, maybe the IRM
+				// isn't really IRM capable after all. Let's
+				// do a bus reset and pick the local node as
+				// root, and thus, IRM.
+				new_root_id = local_id;
+				fw_notice(card, "BM lock failed (%s), making local node (%02x) root\n",
+					  fw_rcode_string(rcode), new_root_id);
+				goto pick_me;
+			}
+			break;
 		}
 	} else if (card->bm_generation != generation) {
 		/*
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
