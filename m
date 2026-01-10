Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB89FD0CBB7
	for <lists+linux1394-devel@lfdr.de>; Sat, 10 Jan 2026 02:39:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SgbVuKmEyUNvSE6SvCTZg5jLEh3mqtbSO9nGmy4TBqo=; b=JqlujucBfqSqxofR4o0nQBCmzv
	a7YPOQ5em7nebdbd0LsC/H5Bc3S40s24Qr1+OhHuUygKRDtvUYMu/gDBHdFNmi/en+8TrzAFp95QE
	2OUqdFIWXGQR7Fyy6Lwak6IwxgXq71tu0aWsb1e7SJuQSqEjEkxgElOW2hqgoOr5hVo8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1veNwq-0003SN-5H;
	Sat, 10 Jan 2026 01:39:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1veNwo-0003SC-HD
 for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/USqrIhzNwvOIg7VpeHZ+THvSNF3Rt04y9067B5c5iM=; b=XnuYDNS2MK098GLR1h7WnQECdT
 +euv4VNiLL2U4Z6Z7F1R8kfYZOE8n5021SKEut6mB9w5RaJhqohix8axQGGsWFh8KHKziTlaZO051
 lNBsXN1OeZKJ7DfxIiLogRkZEiEwnTwgMgkz+gYjAj4mYJ8kcjHc/+dv0bEmx4Qd8WxY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/USqrIhzNwvOIg7VpeHZ+THvSNF3Rt04y9067B5c5iM=; b=isAmMAFCIgJtJyBzwAv5Y910m3
 btQljk93IKVl5aAGRz+U3LtGVzBQH4FFC87AeM0vAWWu6HdMzxgoO9GyH8DgtW4hFO3IV27QbehCL
 OH0UXJWA+AdTMbtIdPQOF5qie4DjR7UHWSfGxGxURm6DTdUTPRpIUUQShZNmsAPo3d8w=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1veNwo-0000fF-2r for linux1394-devel@lists.sourceforge.net;
 Sat, 10 Jan 2026 01:39:22 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
 by mailfout.phl.internal (Postfix) with ESMTP id 87EB4EC0123;
 Fri,  9 Jan 2026 20:39:16 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
 by phl-compute-06.internal (MEProxy); Fri, 09 Jan 2026 20:39:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1768009156; x=
 1768095556; bh=/USqrIhzNwvOIg7VpeHZ+THvSNF3Rt04y9067B5c5iM=; b=U
 /gMuDlAb/ENOdy3dRW2j+mJA9510C+DzfXQJylZDcwYitQod9V3xacUQzUHVACHI
 KfgvdoeCRXCpbdwp+9hHIjBgjLA5g7r1KJWzAwIJAhODqE/gEQ70waj1FZr+BtQV
 c/W7rjXaWYNx+Q4W82mLBvXm2iyLtH2hZxCjdcwIzFDMaec58Uc4mmueU7PYXjgO
 NAHl3O7CCOuWJ7FDDKcV8RHEUaBboB4ZR94Ya5d45Aj6Owvknsv2CyEyHjWMa8Mo
 PiypFvDMBM/ojTlAeqAE+Znm5r9nbvLu0xKhSjMwDe8ev8BF4n0RShBS19Ec2AHU
 QtSZGfYZKnmnYaAKKJbnA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; t=1768009156; x=1768095556; bh=/
 USqrIhzNwvOIg7VpeHZ+THvSNF3Rt04y9067B5c5iM=; b=a4C8Y+WkaWi9EHj9c
 +pgiMallbjXnNXr1HgMju48IaG/U8gCLeW8p42JtPCIrhwjFwWOqCe13/ZjnwmEc
 46CnMEJZGTmROq66FPsRLLv68x7NcnK5BlM8qNOi6CI+r8dp/4HeFJMvDZjoAsXy
 Jbgu0Oz28vt1lg+iu+Zc9xODZIVMAq7E3kDjA20LFZwZ+Ch3KRpKhpuwHkxHm3Mk
 2p0fwvMVoxEV9b3WhwjVoBEwHrbEosUT+t5TEudpkZTo5lX5Wgs/OFsUB+2xU20T
 Nc3w9aUDPRbYToCrZINP1WS7alwvlX5RbTFz3AKk9TcLoFWAuOsr7N/fzNN1zsFy
 wkQ0A==
X-ME-Sender: <xms:xK1hadIPfXJ30YsFrANedw2wZtnxiS270tSQk1uOd6kFTFixQ8xVow>
 <xme:xK1haQ7s2LXtrLjiY9GgdqNmitXmMe20zcItejqbsI4M7IoeJHseUfF6Xgb9UKOMz
 RBDJYRg1UIfAKVziQJROuN4DusZ7ToPXDs-bH1Jl9yM89ZsZRMjEas>
X-ME-Received: <xmr:xK1haYyRunwUXzdYJ0Zpq2078AUveWos_aPFgUtDk8G0K7KVAKpXrMtrGmDETGblkkY78lbRb3tnTkhNsxxWnKAIx6mDcmKgfYQQL_fgZJNU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduuddtfeelucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepjhhgghesnhhvihguihgrrdgtohhm
X-ME-Proxy: <xmx:xK1hacZB1VkDCQLcJRZ5Nt-xeKih16REXaJLjdRd8m8_QsNMWYJsKQ>
 <xmx:xK1haSTvP5259KhfF-wW75J0bJte6mQJoOrqkHq75T48MRkRxP7eow>
 <xmx:xK1haezqcXV3rV1LM-Q1PJtF8MWy-VeOql4qFE7usTNBESePl44Pkw>
 <xmx:xK1haU0cCwLimwcQ1vD9prHuTyOMHD6dv5l-pC0qhDvshHcwB16fsA>
 <xmx:xK1hadl9z8oUov8ShG8vz5Rt4qzBaO9WopYaQVYjTE7KOBI5sOeLBN6p>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 9 Jan 2026 20:39:15 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 1/8] firewire: core: move private function declaration from
 public header to internal header
Date: Sat, 10 Jan 2026 10:39:04 +0900
Message-ID: <20260110013911.19160-2-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
References: <20260110013911.19160-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The fw_iso_buffer_lookup function is used by core module only,
 thus no need to describe its prototype in kernel internal header.
 Signed-off-by:
 Takashi Sakamoto <o-takashi@sakamocchi.jp> --- drivers/firewire/core.h |
 1 + include/linux/firewire.h | 1 - 2 files changed, 1 insertion(+),
 1 deletion(-)
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [103.168.172.149 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1veNwo-0000fF-2r
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
Cc: linux-kernel@vger.kernel.org, jgg@nvidia.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

The fw_iso_buffer_lookup function is used by core module only, thus no
need to describe its prototype in kernel internal header.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core.h  | 1 +
 include/linux/firewire.h | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firewire/core.h b/drivers/firewire/core.h
index 41fb39d9a4e6..26868f007131 100644
--- a/drivers/firewire/core.h
+++ b/drivers/firewire/core.h
@@ -166,6 +166,7 @@ void fw_node_event(struct fw_card *card, struct fw_node *node, int event);
 int fw_iso_buffer_alloc(struct fw_iso_buffer *buffer, int page_count);
 int fw_iso_buffer_map_dma(struct fw_iso_buffer *buffer, struct fw_card *card,
 			  enum dma_data_direction direction);
+size_t fw_iso_buffer_lookup(struct fw_iso_buffer *buffer, dma_addr_t completed);
 
 static inline void fw_iso_context_init_work(struct fw_iso_context *ctx, work_func_t func)
 {
diff --git a/include/linux/firewire.h b/include/linux/firewire.h
index 6143b7d28eac..aa84421b58ac 100644
--- a/include/linux/firewire.h
+++ b/include/linux/firewire.h
@@ -533,7 +533,6 @@ struct fw_iso_buffer {
 int fw_iso_buffer_init(struct fw_iso_buffer *buffer, struct fw_card *card,
 		       int page_count, enum dma_data_direction direction);
 void fw_iso_buffer_destroy(struct fw_iso_buffer *buffer, struct fw_card *card);
-size_t fw_iso_buffer_lookup(struct fw_iso_buffer *buffer, dma_addr_t completed);
 
 struct fw_iso_context;
 typedef void (*fw_iso_callback_t)(struct fw_iso_context *context,
-- 
2.51.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
