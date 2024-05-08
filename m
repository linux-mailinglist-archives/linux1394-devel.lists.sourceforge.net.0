Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9EA8BFB59
	for <lists+linux1394-devel@lfdr.de>; Wed,  8 May 2024 12:54:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s4ew5-00051l-Fg;
	Wed, 08 May 2024 10:54:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s4ew3-00051a-JS
 for linux1394-devel@lists.sourceforge.net;
 Wed, 08 May 2024 10:54:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a0fVWCNAeCMRWZmQr1IdFElN2UvdC3kfZOmfXavatBA=; b=gTAGcAytYhuf4sbDeO8SoUlUTt
 g6O93+8t5cLhFUw8PEG9YtvmRb59GKWoC3DdmDrJkYZWIS6gKTyHiUTv7V/+AkyvrplKYgz5DhSNj
 9qwOj7ubdrdFnLOBD0mqYJN3wbd697YxW4wlyK1o0N9Xe+BQOwb6TLO9sCvaOJCO/xGk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=a0fVWCNAeCMRWZmQr1IdFElN2UvdC3kfZOmfXavatBA=; b=f
 lPilWiBRyqmukcJPs5heb67/Q5k7dNBUaH+/OgJ26SRplTZdkdPG1Q9ydg0QnzeB0e4fF10hR0tVn
 HwT5BafwKrKgOe12KYp9TWcHzJDFb2ypLTuPyCZDvwhFhde6F3JlS3WL4UylmtTdWW1IaqUZu99Yj
 zi2gZCtpCcjW2bOg=;
Received: from fhigh4-smtp.messagingengine.com ([103.168.172.155])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s4ew4-0005Az-12 for linux1394-devel@lists.sourceforge.net;
 Wed, 08 May 2024 10:54:07 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 8D80C114022C;
 Wed,  8 May 2024 06:53:56 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Wed, 08 May 2024 06:53:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1715165636; x=1715252036; bh=a0fVWCNAeC
 MRWZmQr1IdFElN2UvdC3kfZOmfXavatBA=; b=GJT7++4cguQLEh5f6Lv1LRxE5o
 052OK5bew6Z3Fc4esTYE3aRGI68+xobUHL1PbZxp+iQp0yJU7KciV14P9GArcNg3
 vy/ZD7CBNKBF6c7lKzeey0Ax7KqhXsbaxJZaMke4unThnHaFaYr1/yvemxeIKx3T
 2IQdEPNXThMMr5mT36LOi4NdSylz53K9WmmyqrJBs5eiCgLOs0xljQvhs9n4wjKM
 kpVaPfJr2NEGh5iWp69BTUMzZPWZCypLk9m3hg2u6xoSIjO6NiBm9gXnIOxDK+IC
 ap8JAenZMCOgJqLJlkiTayfqugK9JTlMuhyCJKCRieyeYTBrOFQc3bpnZ8rQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1715165636; x=1715252036; bh=a0fVWCNAeCMRWZmQr1IdFElN2Uvd
 C3kfZOmfXavatBA=; b=UCf3mFh579BeYi7sIKB0gJv4qYNLyVoXAdTKhEepwcHF
 P5ct3dSNUeZlzRR0wval38raDWA2uH7so9jlvlzawBlta+tUcePL9HdxrdCA9Hyq
 MrppLBE1l/2h/ILlo9hVtdmb/ytD4/9RosH3BvROn+9XmV27LhYg/gD4IDJs7y6X
 3kq0jPJlz2qnyoQKgvVmYdwr6tl8QqGBuoO+r9nYEeVstii28LNfeIKxHrluJbTN
 rRSObxpLwNBP8e2JWrY5vCLniYXKJSCLULkyQfM5qE0cEh87f13m/i3kqMx4C8KD
 8AU/nK2BcH0F0RMbGAZkXvooghGpL9Fsc/w23UXlCA==
X-ME-Sender: <xms:xFk7ZsfjNba-SWcGXmXu1JN7u0UCcETnXovOKR46qW6CEh0KiY4pjA>
 <xme:xFk7ZuPhANVOxMWSHGm-6EYXb95E4BdLOsMb9ZEoJDUVMRUHtTWVzLGMAFPck7r_p
 GEXmiPN7-LRC7uzEsQ>
X-ME-Received: <xmr:xFk7Zth39orj5eFV7jj3_I9syqNhZX15q9VkmSptbAKGTqmdOStCj51GQ2OPYpNY_Vrt1PhKZs9pKtYa7LxqarmiREngQMiw1KTm4_kFumQYMQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeftddgfedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:xFk7Zh-DoKo9K5SNWrw42e9tJszulcgeSmnVNyiKlNOxvRrH9xV5fQ>
 <xmx:xFk7Zoty_dp35Yu6yL1me9BmCD0V2DrvOcRELfSdseZQsn-8G5wW6w>
 <xmx:xFk7ZoFD3ZWK770tabiv7cGALPtksUxKdQCUOggglK_68KvvZ_AAgQ>
 <xmx:xFk7ZnM1ZSVRokpB3XqYvOWTdY1gNQGLqYl2vUBP7MI9pljPE04azw>
 <xmx:xFk7Zh4mskRZt1wz95iQcPNAWj_qHcXpJ-HB6-Af_EJatV0jUkpo6Y8p>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 8 May 2024 06:53:55 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH] firewire: obsolete usage of *-objs in Makefile for KUnit test
Date: Wed,  8 May 2024 19:53:51 +0900
Message-ID: <20240508105351.532693-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Nowadays *-objs list is just for user space programs. This
 commit obsolete the usage, and simplify Makefile for firewire KUnit tests
 since the tests are not composite objects. Signed-off-by: Takashi Sakamoto
 <o-takashi@sakamocchi.jp> --- drivers/firewire/Makefile | 7 ++----- 1 file
 changed, 2 insertions(+), 5 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1s4ew4-0005Az-12
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

Nowadays *-objs list is just for user space programs.

This commit obsolete the usage, and simplify Makefile for firewire KUnit
tests since the tests are not composite objects.

Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
---
 drivers/firewire/Makefile | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/firewire/Makefile b/drivers/firewire/Makefile
index 013e1f2641bd..75c47d046925 100644
--- a/drivers/firewire/Makefile
+++ b/drivers/firewire/Makefile
@@ -16,8 +16,5 @@ obj-$(CONFIG_FIREWIRE_NET)  += firewire-net.o
 obj-$(CONFIG_FIREWIRE_NOSY) += nosy.o
 obj-$(CONFIG_PROVIDE_OHCI1394_DMA_INIT) += init_ohci1394_dma.o
 
-firewire-uapi-test-objs += uapi-test.o
-firewire-packet-serdes-test-objs += packet-serdes-test.o
-
-obj-$(CONFIG_FIREWIRE_KUNIT_UAPI_TEST) += firewire-uapi-test.o
-obj-$(CONFIG_FIREWIRE_KUNIT_PACKET_SERDES_TEST) += firewire-packet-serdes-test.o
+obj-$(CONFIG_FIREWIRE_KUNIT_UAPI_TEST) += uapi-test.o
+obj-$(CONFIG_FIREWIRE_KUNIT_PACKET_SERDES_TEST) += packet-serdes-test.o
-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
