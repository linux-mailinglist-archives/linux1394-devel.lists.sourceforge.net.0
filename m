Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 171BDB876DC
	for <lists+linux1394-devel@lfdr.de>; Fri, 19 Sep 2025 01:55:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lS/r9NPUjEijPtxDvNWiNpseUaYBMVKDLbAenGD/67s=; b=cMD4VDzuOfxQkLbdwAPsEYSgzQ
	HtsXelQ0KcA2MxFXlmNIy+oU3N+BZsxsoaN1IIHqKr4z+z0WoFypq/Aqs+4lvrBrFDhMbAIr6ZpRs
	NsUIVN7LzD8krXhKKNIFmNy7z2Y4spgeVJ27EIBTQY4VEroC7WVrimiRZF8CwQiGwPXg=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uzOSs-0003Fz-Ol;
	Thu, 18 Sep 2025 23:55:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uzOSr-0003FE-6e
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:55:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1bhCuPFgP4C1oxsw4LyiUdUqGNWaw/azPwPIYtQV6D8=; b=Y18ApGnFPJHhAY/DeMngLmnn7d
 OyrDIJYwZKJDJpBnXOfonluz+LLes7P/Ee9KAEZY3ML2oYvN1BVM9cbCpFAyKvSFzQLf00YeK9xSv
 dOGnZV7bgH7Q/iPZHicvqHsp9uqQLLxw4q0XKA6jbOhCOwaRIm6CbAU0GsHo3dHDFyeo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1bhCuPFgP4C1oxsw4LyiUdUqGNWaw/azPwPIYtQV6D8=; b=dOaJC9zhD6ONyrdPkxONlvHmEx
 EcaKTniJk/kgmp+10hIpZVS7wnkQ2TxWcPUfCEk8nh04/QRmsIc5DE1pqlmevh52N1t07G3SWdJ75
 FqX3bXEToN1AXiJ5p3nk371fRg4ZUrqXME0Eeu0yxxgmqMgwKqQEbTtQqoEU9a5DgoyE=;
Received: from fhigh-b2-smtp.messagingengine.com ([202.12.124.153])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uzOSq-0003Rh-MR for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Sep 2025 23:55:01 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id 37A357A02DF;
 Thu, 18 Sep 2025 19:54:55 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Thu, 18 Sep 2025 19:54:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1758239695; x=
 1758326095; bh=1bhCuPFgP4C1oxsw4LyiUdUqGNWaw/azPwPIYtQV6D8=; b=m
 tIq3rrAQrUx7B9fdBE/FbgrXer2ML5Hsti69lgaME/GvkWdbJl5hXsCs7f1gCMmB
 bEJ7uDwka/r/QcMNWwfgOoXDMCdfIcm1O+6Qyp0adxqy/2+ush1fbeVtd9RO9MDh
 2NpgJwVfD7+ZsLAT872tuXhXnevw8p9cdjZwqD9FzwasHdhAo9XGawtmT7JMKIDZ
 x9/23Dw5CPMyPfRd8vahYRUyUeEtGIgHFNSyZzyTS6zSLbU5nru9PG+/A2ws/Q2c
 8zqpEGkXVgJ8yXfoq4N5BCGPY4zGbrTxsSYHiBzABRechUAamYvwVVSVPiRhNPsK
 qq4iAJt65OerqAj1OalFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1758239695; x=1758326095; bh=1
 bhCuPFgP4C1oxsw4LyiUdUqGNWaw/azPwPIYtQV6D8=; b=RDVoz+VjfUVYE4QBV
 A8l3t3HvMC1GT7+r9u91DXdN5r2MZqHE2y1lJLg3DfKENkpE4CbWSnOU5Dc5OLuM
 LF7NPJaGUqNFLYONBN4dYS6SQQQZ1zVptLJ5EjXZDqmPC/Fh4iPueh6Xe+elR4h1
 hDIsf8eLu4J9DkLQwReSY96DTm+AVV8yTc5OwPhREajmoIMLDl0KPACiFzxqHLwF
 B41V0afJfwx30Cx85aQDIqMj4qZlqRexUqGSl5gl5p/g8sZ4VTJEETZBzxa9PC+j
 PrSVWUXTRWKqr5U/kd0V3rQSNqpW78YVu1pFtQ49s2wg40idKakKIarPWpKOuca6
 2Vx7g==
X-ME-Sender: <xms:zpvMaI2mNrEg_PydudTf3AVIuA0swi3uqK3lpC1w77Mg6g9OKHnacQ>
 <xme:zpvMaMAVqke09NVx9B77SypqiY6Gm8mYr0uOifEhL2lNEs14cSGqXLs0sPAVpLZlg
 uwoK_0xoK-wV_u2evU>
X-ME-Received: <xmr:zpvMaC2ujX0vEUfD6-pFW9TwREG1IOinw4DrWLtxfP65W0NdpLT48oxbyrNg9lFyNcdRHl4E_Y8o6rdR66QXXYazcHLxmKOEVfLqrzPNnqwxU_I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdegjeejtdcutefuodetggdotefrod
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
X-ME-Proxy: <xmx:zpvMaOtJ4DIk9yXLxfvKR5dUEqSzEAoxpV710yr8vpwqcW5h3ryX3g>
 <xmx:zpvMaK6SXswa9J7y2tI_jzqPuzBM1AxXwK-xYbk4EzZW0vR7FURmZw>
 <xmx:zpvMaHLQ8kxbX6xGZncNIyx95pnz0c33Pnmx8K478n1i-pV59xl5vA>
 <xmx:zpvMaC6wi9hSvuhJIwCfkX5LPOtwAC6i_bKCV2Tiqf2V3yUNjztIUw>
 <xmx:z5vMaOYBzlp9-Z7AtI4A_olFMTYriVYmomGfnOP_vtxSgNUC_EddMOb4>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Sep 2025 19:54:53 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 2/6] firewire: core: use switch statement to evaluate
 transaction result to CSR_BUS_MANAGER_ID
Date: Fri, 19 Sep 2025 08:54:44 +0900
Message-ID: <20250918235448.129705-3-o-takashi@sakamocchi.jp>
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
X-Headers-End: 1uzOSq-0003Rh-MR
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
