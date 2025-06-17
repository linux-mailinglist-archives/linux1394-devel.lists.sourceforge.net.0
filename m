Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 807E5ADBE44
	for <lists+linux1394-devel@lfdr.de>; Tue, 17 Jun 2025 02:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zEftnY5Q7yTFlLV4Z045TIK102dbLDQeD9WAXSjTPgE=; b=ljyr5reIy13VndAOkQ6d4S5Wd9
	ggoIr8X7L4m7/ysJIR2+m06MjiXb84LYd1MzqQNxjJiEU/yRXTb5mQ9wGekqRYJxzP7DOG4EKrM/U
	rpGQdmILDZ8wSxGC1qUUCkKBa2aHsp3z4Jpn8ElOEFOxHbx7ZoLFX8kdwscVudYE1tUk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uRKQL-0003xj-T9;
	Tue, 17 Jun 2025 00:43:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uRKQJ-0003xY-ER
 for linux1394-devel@lists.sourceforge.net;
 Tue, 17 Jun 2025 00:43:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pq8UPFVGwXJP+/8WPOkW4/7yYbQFRvJdhInZhUazx0I=; b=WZdebuQBiNht4nDJeCYP84hz1w
 tQuAL/kSU0VBxp2KCp9WqPg8tuWr3CfO4p0Uu8KdaRfSksMfGkY/lEy3qnOTYoTy8ZEBcAegfmapa
 SKcV7Z5TJ8Td7GNDCBxtM+BRLRgyh3SGomeNEGTFVNtPTDFjOico9CgCmjECMZOqODyg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Pq8UPFVGwXJP+/8WPOkW4/7yYbQFRvJdhInZhUazx0I=; b=W
 Bk9r+H/E3c6XCPgATCWn7xaYkhU4I8D5t9T75WpQRvx/awhvZ/tNp1aKvplF1EkVqS9Rb8d45eimb
 aPtRKowJLuVUedv/KewigYOr3ofc41dEHehWsXna2V7wSxjT1/sTzdjlHDMrJYeA5x4N9ULKJ6EVp
 y48PKGnurOzx0uXo=;
Received: from fhigh-a5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uRKQJ-0004Jw-0j for linux1394-devel@lists.sourceforge.net;
 Tue, 17 Jun 2025 00:43:35 +0000
Received: from phl-compute-06.internal (phl-compute-06.phl.internal
 [10.202.2.46])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 58AE71140120;
 Mon, 16 Jun 2025 20:43:24 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-06.internal (MEProxy); Mon, 16 Jun 2025 20:43:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1750121004; x=1750207404; bh=Pq8UPFVGwX
 JP+/8WPOkW4/7yYbQFRvJdhInZhUazx0I=; b=WIoxA9DuMw2FAi6DLzhWCUL66F
 ShE1HPKu0WazAOd0flrA56TqnG6bwi/HGm9BdIUr0kr77f5F6Oh2GXXJqy4bda8q
 Q4dAp8mF0ftrWmacVvFxKpHIO+06/Iv539vGm0GQkaDMfF72h2tmshtESR1I1rXF
 RuaYfGUSvqw5AmQP7kgQI1xEWwGcj6bynVW6ICfHp8Z+ifERWoyNb6cW7diZO7Rn
 XLJRoytI+n0oaMnPXX7T4INCPvFoxXg9QHEIyJcVemnnwiUr6FhcQsA0umfES3pD
 BKdB7cF/ZJqV6Eybk/GlVcOm73ZRLuDov2f8fnuFIlyMQJRDm7M6mLSFXbCQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1750121004; x=1750207404; bh=Pq8UPFVGwXJP+/8WPOkW4/7yYbQFRvJdhIn
 ZhUazx0I=; b=mh1V43dUIke6oMuiERrGUI2RoKLICzg0kwEPCwkhgVoWWg3EZ+W
 HxZzy9i8dzWkKMEwgWXpYlrIDEKYs729G1ncWa6wy8uGMlE0alZkJB+UQOMPvGAN
 2ywldmEOtuND14DgiFNBKlNvSWH493+w6w2uU9XP0E+BSa86wfJptlA0cYzUYwYt
 UfAN7gY/3Xmqn+OLcQoVJfKckBcyCS4N2qczDcKHq0zPNYE0pmujlDa1qDccWVQF
 ArDKRElejn+Nje4kUbO9Y/HgM+t/boc5xlfoE+uLuoT+GvMADAaasoOkJ5eqbNwr
 IrdlAa8Dj/0Ay2dTkl4wdt360suV5wnhXfg==
X-ME-Sender: <xms:LLpQaG17eMDAbe6eEfR1zCjg7_qEQADzJE0IiXLnW3aboXg7leX0nA>
 <xme:LLpQaJGXosj-vd4HPLxioeA10QU0ZZtJ4kMMwD8LZi6mc4BAOjZebCHAxJ9YdcnFb
 WijaZPnCsozD94dgEY>
X-ME-Received: <xmr:LLpQaO4mc_CqBcjmzmsuPrSregPmp2aIN9d1k1WeLaUdSReSXpBqBfGzCelkoCuvivmJFrboeytRK4alrdxcw_mwNy4fm6MHYwikA_ctibSC2A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddugddvkedthecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvve
 fufffkofgggfestdekredtredttdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhho
 thhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrth
 htvghrnhepffdvueelffevkeduhfetjeduffeghfettdfguedtgfdvgfeufeduheevheev
 keeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepoh
 dqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddp
 mhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlh
 eslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhig
 qdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:LLpQaH3TTGK2cXigcEj2UKWMmZ256iYzHDJauWazxfvE9xHcszxUgA>
 <xmx:LLpQaJEeOHrUxE8qlwtCqi_jOioGt5-Tqovf55NlpxKFn_qeZrHK7Q>
 <xmx:LLpQaA_m7eGQCGi1WDsc3rcPt38k35XI0ftU1HWB-qVO152ZtnFblA>
 <xmx:LLpQaOn_bXkjBWhFAGCS05_q9MgOt0myGzb1HB1w6VkZnsSBqEW4VQ>
 <xmx:LLpQaPW5LTVTfmHVxGpW6-lEUBZ68ZTrJOA-8igyqV4cnVs0NG8oI1C4>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 16 Jun 2025 20:43:23 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: core: minor code refactoring to localize table of
 gap count
Date: Tue, 17 Jun 2025 09:43:20 +0900
Message-ID: <20250617004320.477421-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The table for gap count is accessed by a single function.
 In this case, it can be localized to the function. Signed-off-by: Takashi
 Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core-card.c | 7
 +++---- 1 file changed, 3 insertions(+), 4 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1uRKQJ-0004Jw-0j
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

The table for gap count is accessed by a single function. In this case,
it can be localized to the function.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-card.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/core-card.c b/drivers/firewire/core-card.c
index b3e48ca516fe..aae774e7a5c3 100644
--- a/drivers/firewire/core-card.c
+++ b/drivers/firewire/core-card.c
@@ -273,10 +273,6 @@ static void allocate_broadcast_channel(struct fw_card *card, int generation)
 			      fw_device_set_broadcast_channel);
 }
 
-static const char gap_count_table[] = {
-	63, 5, 7, 8, 10, 13, 16, 18, 21, 24, 26, 29, 32, 35, 37, 40
-};
-
 void fw_schedule_bm_work(struct fw_card *card, unsigned long delay)
 {
 	fw_card_get(card);
@@ -286,6 +282,9 @@ void fw_schedule_bm_work(struct fw_card *card, unsigned long delay)
 
 static void bm_work(struct work_struct *work)
 {
+	static const char gap_count_table[] = {
+		63, 5, 7, 8, 10, 13, 16, 18, 21, 24, 26, 29, 32, 35, 37, 40
+	};
 	struct fw_card *card = from_work(card, work, bm_work.work);
 	struct fw_device *root_device, *irm_device;
 	struct fw_node *root_node;

base-commit: aef6bcc0f278eba408751f8b3e0beae992e9faec
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
