Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C87EED38F13
	for <lists+linux1394-devel@lfdr.de>; Sat, 17 Jan 2026 15:28:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H0nDpVE1TRcly9LZOCoukqVo+zvVZalqwwgfFrsLfBI=; b=ivImbnk9Of2Yp8upd0sHn81tYM
	QhPwtSUSPzuwe95lxCaGvYA5gycSDCoZKxJ/mg8dV9zF41DNXGou5h+cRUrkEUGpx2jTbogyrS+iP
	qwYYSxP3fJQYTd78RZHv/36EVGYBNi7gwbRqIIKwa1GwedzZre17RQO3Wmyfve5aFBSc=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vh7II-00052F-2v;
	Sat, 17 Jan 2026 14:28:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1vh7ID-00051b-Dg
 for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IbJBZ5DJy42Pr9Dh1QiqdxTjMOBG5eXgGleQ0l9+Tew=; b=KQrG/rDymwlSI9z+fhKNpx5bIe
 ZJwZTqSkYNtz1jiI6wuTvNfkISDQgMFqEY0pJBV2zaJC+L5sOlLtfkdlCcBhNsKeJPKyf5raU/hsP
 +k7Qwi3tjoIeQxMhO1ps4ePw+xu427iuieqS7o1oP87EgfA5AXwmqHS5GBkvp4DNeVqU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IbJBZ5DJy42Pr9Dh1QiqdxTjMOBG5eXgGleQ0l9+Tew=; b=nVmsXz+xcTdDhAqffVode1R2rm
 GJSgwhLrEWKWSXu7p/NFep+BEDSIrYqXSR60R3NWdQ1zZEEl4rbNiQLenU6n5S4fg6s2AjTWZOSsW
 mZhDUiurHGgWBpRwh/JqXRsTBIc7IL+FlBgzm3Xc+UFtp/U2UyTUnzEsAg03HQIgSbfA=;
Received: from fhigh-b6-smtp.messagingengine.com ([202.12.124.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vh7IC-0001WJ-8Q for linux1394-devel@lists.sourceforge.net;
 Sat, 17 Jan 2026 14:28:44 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
 by mailfhigh.stl.internal (Postfix) with ESMTP id B7F6C7A0325;
 Sat, 17 Jan 2026 09:28:33 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
 by phl-compute-02.internal (MEProxy); Sat, 17 Jan 2026 09:28:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768660113; x=
 1768746513; bh=IbJBZ5DJy42Pr9Dh1QiqdxTjMOBG5eXgGleQ0l9+Tew=; b=F
 e3DTnyw9a5IeQEngaBqLMwIwiSzFSmfmPJDdl+pDPmj4igv6lQwrB02bDTOlEHHq
 JKl4GsTLKz3VkHtSNGYb0UF3JmCnZwOIL6zRgGCOOkc1YIWGysGHDhTo3+FS8aCh
 VoVQdU+UTd1f7gqSSsjtH6Hc3o8b71AaX6uPEeGybBOWwdC40R0/ssvSAgwh+P0W
 7K7PZXGMm7VaJ9+RHNn7cZnRGIUUiQe50n8sYwAuBmUMsJZzG6QSb8bKlA4k5iyI
 8f5fCSM0q1Sp15ZzYW3G/BYkXDeegBlRGQMosko74Vv9f/U8BMCB8GRuDZmfHpP9
 UCqx6oZ8CY71ydGAbfdqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768660113; x=1768746513; bh=I
 bJBZ5DJy42Pr9Dh1QiqdxTjMOBG5eXgGleQ0l9+Tew=; b=uWQoWBsU4Xsuvt+tV
 HGelxHPO6snXd8CVeoay3pLGwALGQ/sZaWNhcZilaEzJ3Zt/3OVrUCNanTr6WBXS
 rSEjx6F8y+hXVIrk7HArCz7h8TTuze4kQknpv+kH+Qo1lEo0Hnw4eVfCDyJLdZmm
 1xK4FKe3XxEHdTlnp1+y8A/O/7a1Vvfa62hg5AfxLZ/vLYVF8LhXy9O/q5l4Hug5
 /7zN/LNRqCQ7vcZo1GXCANMBYivGfelK00tSy6RMsFDNQ5Lnhyz3y7PdDculcT63
 3g5kpbkLIgSF8Ydo8fAw9yvkCKKdisXVmyz/fsthM8HHq1Zxpah/ckwwztDWgTnD
 ZHVIQ==
X-ME-Sender: <xms:kZxraU9U70cHEgyTJbWKqEGiBNOsFFlOw9e7OIpfoeD_pD0LJXduJw>
 <xme:kZxrac1gC-wQ6R3R0bsWFBKm5jNGL5OkO92HZNX1SHSojEQdXsLq5489pFt56ZN4Y
 UZ5Bkz-AmJ5PUOu8FVx5m3T5w_furzFDDg0rbWgypyogjrQiLXV5jc>
X-ME-Received: <xmr:kZxraR9vnyotZLFbiZckH5msyM8BGzPX7KmuwJWeUezoNxYi719KPEEDepTxkqk2bYPoaCviOfcHcREZQYPi3niVPJ84ToRLfr0QaME-NHWvdA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddufedvtdehucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqshhouhhnugesvhhgvg
 hrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:kZxracvqehkTDMS3iJi8GdtFzXpAkJsGBrQYaKW_GqZ5aPsTlP6soQ>
 <xmx:kZxraUBoVjME88a8i9jNdkrocmybZF51wtDTVFrH2TjxxxywGyi0Gg>
 <xmx:kZxraUXxk_ER-gw6UrfmrKa9feCsTbo9_PY0SFMTF7qn6p_6t7Aq6A>
 <xmx:kZxraSDunrUYImPFDbyrbDNiPhq_e-o6MHgGiFfhvPmSL_Jf-pSd8A>
 <xmx:kZxraZQG5PpoXfDwBQBMNAzfAJ1-aE12dNPce3vopieot0F8ql80lJeX>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Jan 2026 09:28:32 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 4/9] firewire: ohci: use cleanup helper for isoc context
 header allocation
Date: Sat, 17 Jan 2026 23:28:17 +0900
Message-ID: <20260117142823.440811-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
References: <20260117142823.440811-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Some cleanup helpers are useful in error path after memory
 allocation for header storage. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp>
 --- drivers/firewire/ohci.c | 17 +++++++ 1 file changed, 7 insertions(+),
 10 deletions(-) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1vh7IC-0001WJ-8Q
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
Cc: linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Some cleanup helpers are useful in error path after memory allocation for
header storage.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/ohci.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 5d9857cbbd24..6760c8d12637 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -2958,6 +2958,7 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
 				int type, int channel, size_t header_size)
 {
 	struct fw_ohci *ohci = fw_ohci(card);
+	void *header __free(free_page) = NULL;
 	struct iso_context *ctx;
 	descriptor_callback_t callback;
 	u64 *channels;
@@ -3015,8 +3016,8 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
 
 	if (type != FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
 		ctx->sc.header_length = 0;
-		ctx->sc.header = (void *) __get_free_page(GFP_KERNEL);
-		if (!ctx->sc.header) {
+		header = (void *) __get_free_page(GFP_KERNEL);
+		if (!header) {
 			ret = -ENOMEM;
 			goto out;
 		}
@@ -3024,21 +3025,17 @@ static struct fw_iso_context *ohci_allocate_iso_context(struct fw_card *card,
 
 	ret = context_init(&ctx->context, ohci, regs, callback);
 	if (ret < 0)
-		goto out_with_header;
+		goto out;
 	fw_iso_context_init_work(&ctx->base, ohci_isoc_context_work);
 
-	if (type == FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
+	if (type != FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
+		ctx->sc.header = no_free_ptr(header);
+	} else {
 		set_multichannel_mask(ohci, 0);
 		ctx->mc.completed = 0;
 	}
 
 	return &ctx->base;
-
- out_with_header:
-	if (type != FW_ISO_CONTEXT_RECEIVE_MULTICHANNEL) {
-		free_page((unsigned long)ctx->sc.header);
-		ctx->sc.header = NULL;
-	}
  out:
 	scoped_guard(spinlock_irq, &ohci->lock) {
 		switch (type) {
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
