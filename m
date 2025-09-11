Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAF0B53E93
	for <lists+linux1394-devel@lfdr.de>; Fri, 12 Sep 2025 00:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h+K6F+vFi2VJq5qAZtugVHTNIdKO3zSR1CUJ1j0E/Is=; b=mCSXOnWk2RhiGKRaIy5Y2QpC/F
	QQnLVNXTiMrF/sT3DqS1BFn5cKtQA7Z2VdKxSFY4CiqBmQiDAwAAnKa1/aH2KRvwQsQXw0Zdrgk0H
	ez2oVqM3fGZHvGfD0pN6HAZZoTUEd8OmdmX3tO4N6aol3OtyZD6Xq+FHPCDI3o5gnaHg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uwpXo-0007py-Kg;
	Thu, 11 Sep 2025 22:13:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uwpXl-0007pn-Sv
 for linux1394-devel@lists.sourceforge.net;
 Thu, 11 Sep 2025 22:13:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eNjR1LB7bRYZ3xIvKQ3Zc+CVsQG5+qT7pKALYdttNsw=; b=WtgoQ9LygJ0ibXUErZQmu8r+WJ
 pofuTLOKpvBqNjDz3/26CbhRRwlnr3rZUMt+g+py4mGssIAqTQtFXk1y+3Vbz2m9iiCALUV/qq/aZ
 AOeA96+3WO6tnSNWOs7hCdgLaygBs6PGnrroic+2LxlUE2OKkINaVXjtUGsfXULs/k8U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eNjR1LB7bRYZ3xIvKQ3Zc+CVsQG5+qT7pKALYdttNsw=; b=k
 izkSZ4t/2M2hCuDCgzV3F0WGsn/5O6j0PjMkOtu5+MxXmzwo7IpfXfkCHYRLkSC/LxByo5KL+ST+l
 18kRFbxvDcKkEPDsfciSG1XIm4aQP7Rf91j7nbWqtoco/7n5+x/nNYXO8RsYiDApbxo3byFlkqLy0
 p3a8lJhPnZfhbQPA=;
Received: from fhigh-a3-smtp.messagingengine.com ([103.168.172.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uwpXk-0000hA-KE for linux1394-devel@lists.sourceforge.net;
 Thu, 11 Sep 2025 22:13:29 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfhigh.phl.internal (Postfix) with ESMTP id CD7931400371;
 Thu, 11 Sep 2025 18:13:17 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Thu, 11 Sep 2025 18:13:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1757628797; x=1757715197; bh=eNjR1LB7bR
 YZ3xIvKQ3Zc+CVsQG5+qT7pKALYdttNsw=; b=F/cUGYZSSUsWUHuxttfCnJ4+3O
 EUfyc295V5nKxoYdvcv9b6ZnSA0HgdCheAiAOHFeGWS3jo1LQx6GSIbD+eIG6Qk7
 KTHbVIGsu1V+z4iy0D8DmpNyrMK029dJFI00QwcX+Y6P6p8JTKnMlfiz4e3Fv1Jq
 tO8jk6/Q3ovBBm0i7RGgxcq2cOsHL6lHHpE2tWPnVZQL/QFA2jbxpLzHs8SD3RmW
 efAg4H6I9ItOaDs/I4SqkLvA1v2rC0R0+wFm4M20k/Miybp9uBeop308pQTpnHC1
 tTp3ljQdE/G965Y3ftGYto2BnU1CfqtOBOMYx3acuJQPPuVrgV6QStgO8/4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1757628797; x=1757715197; bh=eNjR1LB7bRYZ3xIvKQ3Zc+CVsQG5+qT7pKA
 LYdttNsw=; b=ded1Os2XBRMvNCnHPrzMzU3znZG6Po4P69FYCXPUiXq4zKTG+8p
 xyuY67q49aprKj/SpYQSavcS+Hv7K0RNLjy22dRn4BTPriV0oipKWCz18bl+VxVe
 LKqUgfIHf8sf5BusYAtfnnfjqdCVlODiJbfzWprjTTIFHTI8GVleqvAvka9ByMQQ
 Vxaj74I72kh7rynJUyAZYmmQyqg1mw6uVvaIb8kU22yNRbvYqzY+wnnv/9zKPPDj
 3EwnWGymiK2fklRVBzqVMOhudFNVLSWkhJIAX397S6yj3BVVUwA1QJlN3bN88cpw
 tJ4FtrgDkD9lcMkdYEuyEHJDhjk9YKOuR3g==
X-ME-Sender: <xms:fUnDaHw8WFC8wfc-V3Fm_YSQQHzzUdv-SxZqYZx1T8RMWpbwLt1CVg>
 <xme:fUnDaIOm_69CYmfCvK1ymsnaezp4briY8Py_6Dow3tslKZfGbOuN_8J4qbSSM2ITW
 QdtgB6Ws8zQ-hNY7N4>
X-ME-Received: <xmr:fUnDaDSDz1eDSudcN74rjGPfaeCprvKRoE72DpJaqcEPZPFJZi_ubC_950Ok4GAdLgncIiodNae8FM8JLwoskuyp4uBduAotfUJUmeEaVTRE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddvjeefgecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhephffvvefufffkofgggfestdekredtredttd
 enucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihes
 shgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepffdvueelffevkeduhf
 etjeduffeghfettdfguedtgfdvgfeufeduheevheevkeeknecuvehluhhsthgvrhfuihii
 vgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmh
 hotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhr
 tghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtggvfh
 horhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhk
 vghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:fUnDaOZHwLpYWSoPEx3Xsa_gur9S2XGQG9txYMKKjbruLKfMcpYh2A>
 <xmx:fUnDaI04UbJ00cqhca8WllCTRfUjb93H-62qjuTa-mxdxRTWZJkRnA>
 <xmx:fUnDaGXK3YF2EMpaFteXGYDvr0XLPXWm6UJVIBBwMK5iutcn_wYEqQ>
 <xmx:fUnDaKVuLKMjomb15CJYQHxKImfUoGeNIw6lZhbQmN81_GkBfrmAAA>
 <xmx:fUnDaI1YmrULcjLP6oyfKCQ6aKt13AbETAGm1oVvat5WtDPnhvfyvcds>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 11 Sep 2025 18:13:16 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: remove useless lockdep_assert_held()
Date: Fri, 12 Sep 2025 07:13:11 +0900
Message-ID: <20250911221312.678076-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The bm_work work item should be scheduled after holding
 fw_card
 reference counting. At a commit 25feb1a96e21 ("firewire: core: use cleanup
 function in bm_work"), I misinterpreted it as fw_card spinloc [...] 
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
X-Headers-End: 1uwpXk-0000hA-KE
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

The bm_work work item should be scheduled after holding fw_card reference
counting. At a commit 25feb1a96e21 ("firewire: core: use cleanup function
in bm_work"), I misinterpreted it as fw_card spinlock and inserted
lockdep_assert_hold() wrongly.

This commit removes the useless line.

Fixes: 25feb1a96e21 ("firewire: core: use cleanup function in bm_work")
Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index 474d8066e090..32cf6b3344cd 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -294,8 +294,6 @@ static void bm_work(struct work_struct *work)
 	int expected_gap_count, generation, grace;
 	bool do_reset = false;
 
-	lockdep_assert_held(&card->lock);
-
 	spin_lock_irq(&card->lock);
 
 	if (card->local_node == NULL) {
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
