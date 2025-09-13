Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C31B5605E
	for <lists+linux1394-devel@lfdr.de>; Sat, 13 Sep 2025 12:58:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rwgeOTbZwYCwZnWycSuZgaR+321ZVzmvyDz/xHOwTUw=; b=Cod/I52V29wCNb7GgjIHCPKNd7
	nLUJ1D3Uj/cj5wYtHSkcyyaijKvEdP7klHX8zFDR330DU4bit2vkB5p/BXaC9pKVC7aY1r7Wxmoy9
	9m+6rZ7TU0TmxXRpaCFKVZ3Zjtwc5qRKmYZLxRorjNtkbQAMaoa3qiLfV0Y2RG4FW9gk=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uxNx4-0001gJ-VM;
	Sat, 13 Sep 2025 10:57:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uxNx3-0001g9-7i
 for linux1394-devel@lists.sourceforge.net;
 Sat, 13 Sep 2025 10:57:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/rTl3ZLV4TDqbR0iApij3yZEA1dATqWt7hFVGfCHOY0=; b=MLLC0IdIjZpTFEqNlHvCAAJ+UR
 gcwueaTfF6e+CGrdJufh9wPnOMqbdkCORb55f7s0i5uLlr5EFHGbflWo5CAfDNAzsZ49YyIFSBZfa
 92dSuErxKhycf3i+KKUJa0RxS6DkNWGfF8V220oshC88dK7reO+ppKzHCK7B5YrviJs4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/rTl3ZLV4TDqbR0iApij3yZEA1dATqWt7hFVGfCHOY0=; b=hzWG8He+RyrRVZPh+VEpo0zKwS
 484gc1Mckcvf7vD22NjVEYyK7sTLckvLbMxM0AjWdTvT+vgYleep1y/SCCvrq3VuyOX+CvJpnlVY7
 B2nnR+bnWmP/jsxvrlaub3p5NgkxUsSD40IpJHMIeWRS5KY4VGXtQzJbes4p93VjTqd4=;
Received: from fout-a2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uxNx2-0000q6-Nz for linux1394-devel@lists.sourceforge.net;
 Sat, 13 Sep 2025 10:57:53 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
 by mailfout.phl.internal (Postfix) with ESMTP id 35F1BEC01E7;
 Sat, 13 Sep 2025 06:57:42 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-03.internal (MEProxy); Sat, 13 Sep 2025 06:57:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757761062; x=
 1757847462; bh=/rTl3ZLV4TDqbR0iApij3yZEA1dATqWt7hFVGfCHOY0=; b=V
 fXUHIf++HTrtPc4dVzqII4XxBnKw/qYBaJC2t3OXjx7AKavEB+8uTnAfDPUHNn8o
 S2DX0H9a7Qd8NC3i1Y32TXZCRbhKF5g0Jvm/lRwIG3MSL3Ztg3El6TZCbtXqXUH2
 InMeyrMexf66OOYoNvijV0f+vCqjCFA34LdDARmhBlE2dhKaaiOmDlKR3TipHgFp
 mJbbqNPiY0besh4fiJ1t2uWugpMaLWZY3GfZk4CFegP4M/8GJxPdFYZW5BqXoAk/
 +NRd/OO8z1T99Iz56vxk0jktD8LNq15ONdaA4slDoBH0sJTGTqeUf9IbPbjg6TAM
 Dr6IV1EObJ1SaaAb8wUCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm1; t=1757761062; x=1757847462; bh=/
 rTl3ZLV4TDqbR0iApij3yZEA1dATqWt7hFVGfCHOY0=; b=mPpig+VkQJ+x1tEuA
 vISC8Ozrnzh6gP6j5LOTtQb+9wboo1MF3U3CtLjXXU0GmknKPT8BfZgxaEAOhSiN
 I/yR4bxdf3W6p+24NtEW3a8PqzZd/jKXDOUd4M1ZbG7DWGQi0gUe+r/OJKiy6Kua
 Xqn8yjzaShcrglyK9DhNrX20e05dUls0BBUpeovffxcaFeqM5u2wIzG7nsFtkT7/
 c8+a6EgzBlkHMmW9k6fO8hnqfEv5gvBb1E5xi83zk3cwKHRXUU0wPz7cvIzyWuNl
 0kR2yMn+on01Szlv8pBCDysF14DhZVqR81zH2Pdhy1zKv2kCz9WreGL764+aQYhA
 9GeUg==
X-ME-Sender: <xms:Jk7FaDb3hPSIdinfCWu8TKmSG93GczZrBsFpBvGFPqRXUTc0C4XAMw>
 <xme:Jk7FaLVDRjaY4HiD6CCnhzORFFPtxV6mgeYbD63fNxCLfZ3dDQRB7CadEaptLxOCS
 pbL38kWSGcfG0eRI-M>
X-ME-Received: <xmr:Jk7FaH5dMzt241F75jHYPfgdyAbRhHDzDFpd_CeLytDT7hgu-92IYVnupOl1zagEtHm5X_YZ1akyNuJKFNIMxxA3DcswIb7QPe2oBh2m1uSFeg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefudejgecutefuodetggdotefrod
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
X-ME-Proxy: <xmx:Jk7FaGi1mqpDkJJKrOElOvCr97rzi6S_TeNmzo4QnscUpSN7GyULug>
 <xmx:Jk7FaOekjMClzqHGjzyvK8NUG2SipJmGp4qyK2Z0Bk4izdSj67fZ8Q>
 <xmx:Jk7FaLfIe-MMht4KxdW2mapcRdOaKhhAKCee7C4orKZJ4iyutV3Fvg>
 <xmx:Jk7FaI9jh7XvxBpvqoPWrift9BMoe9SaQNXsgo7bZ7TmFXSCZBh8MQ>
 <xmx:Jk7FaJfowPJHjS8TVAOFxYIl4XhV10a4hfmHrCl-_6RADk3x9j_G4oaY>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 13 Sep 2025 06:57:41 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/2] firewire: core: use macro expression for gap count
 mismatch
Date: Sat, 13 Sep 2025 19:57:36 +0900
Message-ID: <20250913105737.778038-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250913105737.778038-1-o-takashi@sakamocchi.jp>
References: <20250913105737.778038-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The gap_count field is assigned to zero when mismatch is
 detected.
 In such case, the macro expression is preferable since it is easy to understand
 the situation. This commit applies the idea. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/core-card.c | 2 +-
 drivers/firewire/core-topology.c
 | 2 +- drivers/firewire/core.h | 3 +++ 3 files changed, 5 insertions( [...]
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
X-Headers-End: 1uxNx2-0000q6-Nz
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

The gap_count field is assigned to zero when mismatch is detected. In such
case, the macro expression is preferable since it is easy to understand
the situation.

This commit applies the idea.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c     | 2 +-
 drivers/firewire/core-topology.c | 2 +-
 drivers/firewire/core.h          | 3 +++
 3 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 32cf6b3344cd..bf2e7f55b83e 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -425,7 +425,7 @@ static void bm_work(struct work_struct *work)
 	 */
 	card->bm_generation = generation;
 
-	if (card->gap_count == 0) {
+	if (card->gap_count == GAP_COUNT_MISMATCHED) {
 		/*
 		 * If self IDs have inconsistent gap counts, do a
 		 * bus reset ASAP. The config rom read might never
diff --git a/drivers/firewire/core-topology.c b/drivers/firewire/core-topology.c
index 74a6aa7d8cc9..5f8fb1201d80 100644
--- a/drivers/firewire/core-topology.c
+++ b/drivers/firewire/core-topology.c
@@ -241,7 +241,7 @@ static struct fw_node *build_tree(struct fw_card *card, const u32 *sid, int self
 		// If PHYs report different gap counts, set an invalid count which will force a gap
 		// count reconfiguration and a reset.
 		if (phy_packet_self_id_zero_get_gap_count(self_id_sequence[0]) != gap_count)
-			gap_count = 0;
+			gap_count = GAP_COUNT_MISMATCHED;
 
 		update_hop_count(node);
 
diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 083e39034c37..79eb57fd5812 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -27,6 +27,9 @@ struct fw_packet;
 
 /* -card */
 
+// This is the arbitrary value we use to indicate a mismatched gap count.
+#define GAP_COUNT_MISMATCHED	0
+
 extern __printf(2, 3)
 void fw_err(const struct fw_card *card, const char *fmt, ...);
 extern __printf(2, 3)
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
