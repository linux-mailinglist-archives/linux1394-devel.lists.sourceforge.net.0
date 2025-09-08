Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D723B481FF
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Sep 2025 03:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mSu57VkxaRZdWjLEfS85GsrAqeb8xIfsJPc15fvyeEg=; b=GlDWmXDihr0Zm8fxyctTe6v1Tm
	CNA+WjEnncCjY7n4tz7s93x4D95f9ZetTwD5Q2aBW+dlMULbvlU4JJISRDGARtWkYSS5YD8fxUCH2
	J5F3UvMfESJIj5SekXnWx3cFoCvX0nj2xvmdzvlg6V9/N4Nk/RGSn1PG4EV/4/1t3Bgs=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uvQZW-0003og-8O;
	Mon, 08 Sep 2025 01:21:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uvQZU-0003oN-BE
 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zb78927kFIsqfW6PLd6meqtF4v0FQTdlwbh5TO1B41c=; b=Ef1trngzIAfPPDGclBSlsB0eES
 dAKYv0efbcvd2HM1/cxcKqBAxgDOqwGooHFIUabUx9Z5wCdwaHcR2ab3r68BZ6+AZOJfVrACZY/rR
 weIo8Wo/mc6YTMYiW684NAsfFoqbRqaxXJnLRfeHrwJxrJuOcT8usiN72tOy1QYoNnjc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zb78927kFIsqfW6PLd6meqtF4v0FQTdlwbh5TO1B41c=; b=E7aC/62q4r1u0gpeEtUmCXgKuw
 a7UljGvF+Wfkib2dSf3NWHKRpVfXYGDO0FKEoD3R0uTXReO2efSqcD5ibP2+cihLEEcRtpxy5szo3
 soVuT5OpxFAwooGUTWZ3BSoSpJILWzpepGu5vfIpOieNNV58dlCCxRcvdP27hwbti9dE=;
Received: from fout-a3-smtp.messagingengine.com ([103.168.172.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uvQZT-0001iz-T2 for linux1394-devel@lists.sourceforge.net;
 Mon, 08 Sep 2025 01:21:28 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfout.phl.internal (Postfix) with ESMTP id 5C0F3EC008A;
 Sun,  7 Sep 2025 21:21:22 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-11.internal (MEProxy); Sun, 07 Sep 2025 21:21:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757294482; x=
 1757380882; bh=zb78927kFIsqfW6PLd6meqtF4v0FQTdlwbh5TO1B41c=; b=O
 1KJoKCLxsJg3rI03pQG0AAgff3cTaJQFAS6wWfBd0omYQnr+YleRTvJxGS+QmEAI
 LjjHZTrhIludes7n0a6cU2F5WdB+5GRpyAH/EPwqh8DMYrgSEXqcL6zVu99UfYi4
 9ILvbLQBzRkZVQMZZ4apKjVDFB+/pyEogoQSky0ikGFcfRWrbL2A1LW/HDPoSobD
 VAlIyZRcGgk8E5/5bloSQyj1LjAhNH1PApc810VCe8qXWYPlfdCf96rRNqEqTB8W
 G3SpNYfNyMnJp4lC7goWgxIKis738Ggn6maSGrTDojdjhdi3N58yBcJ465KlJdS2
 68cyZ+499nEa9kvs2Rsow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757294482; x=1757380882; bh=z
 b78927kFIsqfW6PLd6meqtF4v0FQTdlwbh5TO1B41c=; b=HpXuwSvsmPf8nW2E+
 MDTBuhbhaHACVJBJS3ZiMliilPqBYGnylGFOyqMTKh0YN5cgYhUKr8Wuy7r+J/Vj
 T5VL4xTk1O1TzhseOIppyV8BdhoEJ2iwWe0u63HRn0c1d6sKT/HRfpq1u1e3Qlsw
 JtKdkSJbnqw40rIWMD9jk8++yvF+Gnw8OJTBjTSqP3ne43511xeemiwsEHWgqhd1
 k/yx9e0tQEcYuam9+n6qwEjEi0rrCJX+/Xi1VD0s3y5XKpIAdT7kWnUzAcLFo9IA
 sGl081Ga1UH70rweLJBlTwmEHL9jMkk5m0dgF+ba56wZlm3oQVPA5+VAg1UK3GCB
 azB7g==
X-ME-Sender: <xms:ki--aN8eKzzfbRE20f6huzqfsMJHALV48qjfYn6gd2LPodbwx0gGrA>
 <xme:ki--aKr8ch0EpJHUHCBnJk0XIAe9PDpxov7GTvE7z6RQrz9AzU3NA3PwrN9N48ZMB
 c6rWHniITAP4l3ugRc>
X-ME-Received: <xmr:ki--aM87Rs8RzfZnii9XDoFWzDh7_8t70bWpJtw907sI1kGKVa68_APhEU9G2OaeUq0AyhEuVHix3S6ZKq1FO0vqIC3c3FDbxIOjpjKalD4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdduiedulecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgjfhgggfestdekredtre
 dttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepvdejgfejuedvgf
 duudekleevtefgtdevhfdtffefiefgveeuteffiedvffekvddtnecuvehluhhsthgvrhfu
 ihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:ki--aOUjDNu4GX4XUNU-C1hfUEREdBabth_y5lqw2j-45RoDr1TUww>
 <xmx:ki--aCD-WIuZaKA93VVrBLTOSK67p4QOoeCesjvHFS8EctyYgQcg0w>
 <xmx:ki--aPz7MoPGZ9mLi_Xb9gD9uPg1b2SeLvCqCONuHhcIQkPdNsjPIg>
 <xmx:ki--aPA1NGgJvG6Xsix_oK0HupBY8CIgkUg4qZRXy0zVChCesrpmXg>
 <xmx:ki--aEieGe9hfLNUIR_78YEjvdDz0gjrGpr8pVNZVZ9wPwiqgzTjXb0u>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 7 Sep 2025 21:21:21 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 06/11] firewire: ohci: localize transaction data and rcode per
 condition branch
Date: Mon,  8 Sep 2025 10:21:03 +0900
Message-ID: <20250908012108.514698-7-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
References: <20250908012108.514698-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The function local variable, transaction_data, in bm_work
 function is conditionally used. In the case, the branch-level variable is
 sometimes useful. This commit uses this idea. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/core-card.c | 21 +++++++++++
 1 file changed, 11 insertions(+), 10 deletions(-) 
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
X-Headers-End: 1uvQZT-0001iz-T2
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

The function local variable, transaction_data, in bm_work function is
conditionally used. In the case, the branch-level variable is sometimes
useful.

This commit uses this idea.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 5bd89ddf5018..b98797e4f1d4 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -292,13 +292,12 @@ static void bm_work(struct work_struct *work)
 	struct fw_device *root_device, *irm_device;
 	struct fw_node *root_node __free(node_unref) = NULL;
 	int root_id, new_root_id, irm_id, bm_id, local_id;
-	int gap_count, generation, grace, rcode;
+	int gap_count, generation, grace;
 	bool do_reset = false;
 	bool root_device_is_running;
 	bool root_device_is_cmc;
 	bool irm_is_1394_1995_only;
 	bool keep_this_irm;
-	__be32 transaction_data[2];
 
 	lockdep_assert_held(&card->lock);
 
@@ -346,6 +345,11 @@ static void bm_work(struct work_struct *work)
 		 * gap count.  That could well save a reset in the
 		 * next generation.
 		 */
+		__be32 data[2] = {
+			cpu_to_be32(0x3f),
+			cpu_to_be32(local_id),
+		};
+		int rcode;
 
 		if (!card->irm_node->link_on) {
 			new_root_id = local_id;
@@ -361,21 +365,18 @@ static void bm_work(struct work_struct *work)
 			goto pick_me;
 		}
 
-		transaction_data[0] = cpu_to_be32(0x3f);
-		transaction_data[1] = cpu_to_be32(local_id);
-
 		spin_unlock_irq(&card->lock);
 
 		rcode = fw_run_transaction(card, TCODE_LOCK_COMPARE_SWAP,
 				irm_id, generation, SCODE_100,
 				CSR_REGISTER_BASE + CSR_BUS_MANAGER_ID,
-				transaction_data, 8);
+				data, sizeof(data));
 
 		// Another bus reset, BM work has been rescheduled.
 		if (rcode == RCODE_GENERATION)
 			return;
 
-		bm_id = be32_to_cpu(transaction_data[0]);
+		bm_id = be32_to_cpu(data[0]);
 
 		scoped_guard(spinlock_irq, &card->lock) {
 			if (rcode == RCODE_COMPLETE && generation == card->generation)
@@ -523,11 +524,11 @@ static void bm_work(struct work_struct *work)
 		/*
 		 * Make sure that the cycle master sends cycle start packets.
 		 */
-		transaction_data[0] = cpu_to_be32(CSR_STATE_BIT_CMSTR);
-		rcode = fw_run_transaction(card, TCODE_WRITE_QUADLET_REQUEST,
+		__be32 data = cpu_to_be32(CSR_STATE_BIT_CMSTR);
+		int rcode = fw_run_transaction(card, TCODE_WRITE_QUADLET_REQUEST,
 				root_id, generation, SCODE_100,
 				CSR_REGISTER_BASE + CSR_STATE_SET,
-				transaction_data, 4);
+				&data, sizeof(data));
 		if (rcode == RCODE_GENERATION)
 			return;
 	}
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
