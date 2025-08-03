Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B59C7B19406
	for <lists+linux1394-devel@lfdr.de>; Sun,  3 Aug 2025 14:20:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DGRp4Vvltz1+xiG9Q2Z7Yp95l1xKAamnUk5iv5qPobA=; b=G974oW9YK16s988+lRLEHbdPIH
	fngRPnttRYAXQF5e/BXX4p27CLjVWhV7FK7aLJg6hJH+tRbAxHSWOm3Xxoy4ELb/yl+bFZ5w2XRFm
	ZjigxsBkIxt9Ls/PN1X30UU5xYZ+pzOz8D/bHOpdIvZ8zcEPMbSKnm4y3lD4rG9nP+Ho=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uiXhf-0007Dk-Fr;
	Sun, 03 Aug 2025 12:20:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uiXhd-0007DV-OM
 for linux1394-devel@lists.sourceforge.net;
 Sun, 03 Aug 2025 12:20:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0wTs9lEFAXHwGLgW5F3fT9Ue6CFiDVXylrQSLEDJF5Q=; b=ibOw0rJMzhNocjUeqLx02VYI6T
 rXnzKeNFmeJSxTm+PbpIenOeAC7m2QRlZgNnaD2YII5dwqV99cbP2+N0clPnUmjN+rweU8CiFiBgL
 Is1PpMmwQdASR6RC85JM3Us21s2vyYVPigN5FppKFfEYnujJgSM9Kg7/605rYnLc5/zw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0wTs9lEFAXHwGLgW5F3fT9Ue6CFiDVXylrQSLEDJF5Q=; b=aSEtjMjrCzyqlf3i633lUOB487
 cCiW7otUdxdo/DRR/0GRi0ea5NF2JdDsmw0/Xm5M8Rr/d66LIuuOunX7jIG65JTeJStTZCn3WeF1g
 7QZ9a/N+hF2eec+VuC7/30oIenVfv0S6b6R5itPc8HtXyWoevcvMn/xa1v+j+WfqGqyY=;
Received: from fout-b6-smtp.messagingengine.com ([202.12.124.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uiXhd-000559-9L for linux1394-devel@lists.sourceforge.net;
 Sun, 03 Aug 2025 12:20:37 +0000
Received: from phl-compute-05.internal (phl-compute-05.phl.internal
 [10.202.2.45])
 by mailfout.stl.internal (Postfix) with ESMTP id C70DD1D00051;
 Sun,  3 Aug 2025 08:20:26 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-05.internal (MEProxy); Sun, 03 Aug 2025 08:20:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1754223626; x=
 1754310026; bh=0wTs9lEFAXHwGLgW5F3fT9Ue6CFiDVXylrQSLEDJF5Q=; b=S
 XZBtoE2P06n5pul5xgkbVgKzh346tEB0dNZwnU2gZXpBM4zKcolo+kAp0fW8rXuC
 L+iu+wBFYzHxRebM3kEqCa0necdFU6q+X+7uz7kpGR4b9RTkKZeAh14z1BLNNAWa
 stTacs/tBO1SMRLnYLNyS2RUoVtne7kidDSWqH6yYNGH9syKZF2N+gyGXmunnsac
 SfFCPUFEEX+BuFn3fhEjFKwv4hsdfbWKrzPuJZRiFELCD0avUP7MkrhJ1VShCi8u
 9bN/iK38oqs2Nf9fFsUafwKjFiEW52Zyj81Z1pQ0WgXlCcE2RDd2+r0gTwa/Rgz+
 3B+9xX32pi0LwohDacxZg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; t=1754223626; x=1754310026; bh=0
 wTs9lEFAXHwGLgW5F3fT9Ue6CFiDVXylrQSLEDJF5Q=; b=nc665JG+ObNYJmP0m
 rilqml+2lwXXx0RrPNn/lJZHvWwc6+glGBcnbAJnyPQoSZGCNHV0/dXPmdup/r5W
 gHKywlzqRMVBq+YyUUSpDN5BjivrFS/i9x+tWlvxITF0ZzkeuFPvzM+yjTI9/3Lc
 JgBix7SaZXIFgCnuhDCMXd1DQ5Gdr2wlBqtQtMo2QMLFjx0QimvFH/jK+Jl8BJHg
 s/7OqnUI7BQecrFBANmU9zkjJFKmVEFBELme/I3CBOtZkeBoDLzDX4+ffWHQMXGJ
 bWaQqr1dMwf7xysmQAVe8NCy1xbZXS/ZaTI2pj6c1qZv/4Mid0iv3AQmm1ZUoM3R
 ZkVqA==
X-ME-Sender: <xms:ClSPaMA1EwxBIo4bjo5F1us7Vf9bzdhc5tP6gQqBl_6WgBp8jl1dUw>
 <xme:ClSPaHfgPl2-OKQ0Pm-g56hsXPfAj8PDtYSTHQQalkeRcRwBrbkdS7S0qReu81Xtm
 Dj8wmsc-9K_t3I71V8>
X-ME-Received: <xmr:ClSPaBhovO63JTATgfiNVre6CoB0hH1OeoyDxHIBuxPuFaQv2D26zPArBZ6Ctd8TGzgVlLzdZGtqfWmFwb5mQgqMyfoclXwyDVmxkhL3BK7C>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddutdelgeegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpedvjefgjeeuvd
 fguddukeelveetgfdtvefhtdfffeeigfevueetffeivdffkedvtdenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhu
 thdprhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurh
 gtvghfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgv
 rhdrkhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:ClSPaPqUco28fRggWyja7YC5xrdHBlZMPaWyi2Uc0RO2crhy4G3LcA>
 <xmx:ClSPaBEC7P-uYNs1mMolY3ebUPBb3L0ChdfA-8Xf4I-ERvcVXP2NDA>
 <xmx:ClSPaJkvgtuyWgEcTXvJn4mS6vxkk1sJlvCtI_v9MYfM7yzhaO71rA>
 <xmx:ClSPaMk9COWv02RwotSiWMs7ZW-hCcVLP7pkIBW7DF20jzSgZVFZGw>
 <xmx:ClSPaPGWkwb7DpigS2hW7pH_VWKzhcLDXRZxZy8rjQGN5f3HsQgP6BUR>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Aug 2025 08:20:25 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH v2 4/4] firewire: core: reallocate buffer for FCP address
 handlers when more than 4 are registered
Date: Sun,  3 Aug 2025 21:20:15 +0900
Message-ID: <20250803122015.236493-5-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250803122015.236493-1-o-takashi@sakamocchi.jp>
References: <20250803122015.236493-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The former commit has a limitation that only up to 4 FCP
 address
 handlers could be processed per request. Although it suffices for most use
 cases, it is technically a regression. This commit lifts the restriction
 by reallocating the buffer from kernel heap when more than 4 handlers are
 registered. The allocation is performed within RCU read-side critical section, 
 thus it uses [...] 
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
X-Headers-End: 1uiXhd-000559-9L
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

The former commit has a limitation that only up to 4 FCP address
handlers could be processed per request. Although it suffices for most
use cases, it is technically a regression.

This commit lifts the restriction by reallocating the buffer from kernel
heap when more than 4 handlers are registered. The allocation is performed
within RCU read-side critical section, thus it uses GCP_ATOMIC flag. The
buffer size is rounded up to the next power of two to align with kmalloc
allocation units.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/core-transaction.c | 36 +++++++++++++++++++++++++----
 1 file changed, 32 insertions(+), 4 deletions(-)

diff --git a/drivers/firewire/core-transaction.c b/drivers/firewire/core-transaction.c
index 7a62c660e912..1d1c2d8f85ae 100644
--- a/drivers/firewire/core-transaction.c
+++ b/drivers/firewire/core-transaction.c
@@ -960,7 +960,7 @@ static void handle_fcp_region_request(struct fw_card *card,
 {
 	struct fw_address_handler *buffer_on_kernel_stack[BUFFER_ON_KERNEL_STACK_SIZE];
 	struct fw_address_handler *handler, **handlers;
-	int tcode, destination, source, i, count;
+	int tcode, destination, source, i, count, buffer_size;
 
 	if ((offset != (CSR_REGISTER_BASE | CSR_FCP_COMMAND) &&
 	     offset != (CSR_REGISTER_BASE | CSR_FCP_RESPONSE)) ||
@@ -983,13 +983,38 @@ static void handle_fcp_region_request(struct fw_card *card,
 
 	count = 0;
 	handlers = buffer_on_kernel_stack;
+	buffer_size = ARRAY_SIZE(buffer_on_kernel_stack);
 	scoped_guard(rcu) {
 		list_for_each_entry_rcu(handler, &address_handler_list, link) {
 			if (is_enclosing_handler(handler, offset, request->length)) {
+				if (count >= buffer_size) {
+					int next_size = buffer_size * 2;
+					struct fw_address_handler **buffer_on_kernel_heap;
+
+					if (handlers == buffer_on_kernel_stack)
+						buffer_on_kernel_heap = NULL;
+					else
+						buffer_on_kernel_heap = handlers;
+
+					buffer_on_kernel_heap =
+						krealloc_array(buffer_on_kernel_heap, next_size,
+							sizeof(*buffer_on_kernel_heap), GFP_ATOMIC);
+					// FCP is used for purposes unrelated to significant system
+					// resources (e.g. storage or networking), so allocation
+					// failures are not considered so critical.
+					if (!buffer_on_kernel_heap)
+						break;
+
+					if (handlers == buffer_on_kernel_stack) {
+						memcpy(buffer_on_kernel_heap, buffer_on_kernel_stack,
+						       sizeof(buffer_on_kernel_stack));
+					}
+
+					handlers = buffer_on_kernel_heap;
+					buffer_size = next_size;
+				}
 				get_address_handler(handler);
-				handlers[count] = handler;
-				if (++count >= ARRAY_SIZE(buffer_on_kernel_stack))
-					break;
+				handlers[count++] = handler;
 			}
 		}
 	}
@@ -1002,6 +1027,9 @@ static void handle_fcp_region_request(struct fw_card *card,
 		put_address_handler(handler);
 	}
 
+	if (handlers != buffer_on_kernel_stack)
+		kfree(handlers);
+
 	fw_send_response(card, request, RCODE_COMPLETE);
 }
 
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
