Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEA18B8618
	for <lists+linux1394-devel@lfdr.de>; Wed,  1 May 2024 09:33:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s24SY-0004IM-0O;
	Wed, 01 May 2024 07:32:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s24SV-0004I0-KW
 for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 07:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RAFY3cY91TSkbsCZhMDbVyQHMlPIpPBZeDAj36rF968=; b=PNzGk0+8lT87GQDGn8nArOuP4M
 9BuirLoUjVuYoKp3lurAwU7JnXFrElb6Keg9hiLqP+LYY1acTKEGXHje6e8aZ6BhzCWfY7jQ2OQTE
 8t7COGPTBb1elKS41+gzvLLzyZhBU6jo14XikjDmmvJHb427VmPmqG1HogTjWwbJ5UsY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RAFY3cY91TSkbsCZhMDbVyQHMlPIpPBZeDAj36rF968=; b=E
 VjrNh/jo0SOeCsiizLsr8eCWXuD73aghqAKTcetmLb5c1r3ns+KLCu5pbK2Am2YYgDoehWU3Vyvpe
 cDWMdpSRHdPkTvy9yp2ZwqeSIt26WG2hdG6juT/vUVzxdGUu1e6zwRk1fJSxLqI7wR7ZAfYuQTMjZ
 6DG07rhhKu6Not8g=;
Received: from wfout7-smtp.messagingengine.com ([64.147.123.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s24SU-0003Pt-HK for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 07:32:56 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.west.internal (Postfix) with ESMTP id 261461C000F9;
 Wed,  1 May 2024 03:32:44 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Wed, 01 May 2024 03:32:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1714548763; x=1714635163; bh=RAFY3cY91T
 SkbsCZhMDbVyQHMlPIpPBZeDAj36rF968=; b=cVWV2XddlXNJH9dqlDA6xe+uTH
 ZydKkzh55eEqCYoxucDK3oSq1AJcW7rroR6ROy8dKpSM9I3Q2LWdIfC04S8+TdOQ
 10OpE385Dq4RTkfPR2GhAyo+eH/oC88fB56/NTz10O0tl8gvrPskvN/AICTUYtEU
 w4+2wUFERDewZ2TeoMxpcOvUO0+5O7Hw77kgXwax/Fqvgc4kqR2PeguCKtM474c1
 yOtyizRsCBEsz4zzExtss5zY6RKfmamjj8FCVNBOM87VZaSsyifx+OG0YJl/ArgX
 J0PlSmMxGi5rlKcLzLokziI1Vt22gxtusRLhZUsIlFRlkEyYY/evRsQbxO1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714548763; x=1714635163; bh=RAFY3cY91TSkbsCZhMDbVyQHMlPI
 pPBZeDAj36rF968=; b=jt/WdK2hOB/4Xyym0f2RnqrUp+mNZ+89xqFqu6/RRE9W
 YWyoKjswTAVGb0j8b9tnAeFDuTbUavvDSbOvZhGPtH0glOCjXi4dRsO0vN5lXPEo
 fw20CWdzY5tiydzi8wXStpsx13eBDRqK9P03U1fquUnpOb0AxRIWpuBROISzV3rQ
 3xF1xKYzfUuBMpKgwfIA1MZYV1GVwalyrwBRY5Jpk1qaEu7A14K0fPWPxnLLSoS0
 5tK3bih3BCzM10+GYnu0L4Ku7LcfH8pBf2lAqRK4C/AAIt9fr8v/6Kc+t9q0NRbG
 rjma0A9XjShEuKJrXHpSo7BEhsD44veMLX+GlLpEfQ==
X-ME-Sender: <xms:G_AxZtil2T0fpzhav4Lh67LWriDUoXeUB29NU1JuNGRAX2aZotwJuw>
 <xme:G_AxZiDJwVvNw8GoIBw_IYUyKvluPxUNijtRIuaJkszGLklyArU7_Wv7tDi_s9G5D
 glBLPa2K8MTmJoYJB8>
X-ME-Received: <xmr:G_AxZtG6FU1E2nEKwf0eqRDBS2r8QVV0HO4R5yFrQCQycJyvsUVHhnx01VcxSd5fYPq1w4tdCq93YPhKl66me-VElRyfcwYPsNzKgjEsWLC1bdI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduhedggeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:G_AxZiS9pxO3PSreKaiJM4NCRDJlZFuacYRy7MFyELIu2J4M5ph_mg>
 <xmx:G_AxZqykzeOTyqgTh7eGJIJ6xt3pH9FFU_jEYYqqVTzeHHKVDTgdVw>
 <xmx:G_AxZo5B-Dfx_8HUQ5nlpXj-F9BxP7jCY74Y_gHUZnCG1qGy-XtCLg>
 <xmx:G_AxZvwOH-XN5ixo3PvZ1ReEfH7NMyHa9okNc2JkeSmsAR9exePwuQ>
 <xmx:G_AxZu8K5vgC8ChGtlvPfWIoIFPwbjn_j2yUz3GFFTwhKZ3xi60mlm8U>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 May 2024 03:32:42 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/5] firewire: core/ohci: add tracepoints events for bus-reset
Date: Wed,  1 May 2024 16:32:33 +0900
Message-ID: <20240501073238.72769-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, IEEE 1394 bus is under bus-reset state when the physical
 state of bus is changed; e.g. bus topology change by adding new nodes in
 the bus. It is important to handle the state appropriately for the mai [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [64.147.123.150 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1s24SU-0003Pt-HK
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

Hi,

IEEE 1394 bus is under bus-reset state when the physical state of bus is
changed; e.g. bus topology change by adding new nodes in the bus. It is
important to handle the state appropriately for the maintenance of bus.

This series of change adds some tracepoints events to trace the events
related to bus-reset. Some kernel log messages are obsoleted and
deleted. It also includes for 1394 OHCI driver so that bus-reset IRQ
event is recorded as much as possible, and obsoletes bus-resets bit
from debug parameter successfully.

Takashi Sakamoto (5):
  firewire: ohci: add bus-reset event for initial set of handled irq
  firewire: ohci: obsolete OHCI_PARAM_DEBUG_BUSRESETS from debug module
    parameter
  firewire: core: add tracepoints events for initiating bus reset
  Revert "firewire: core: option to log bus reset initiation"
  firewire: core: add tracepoint event for handling bus reset

 drivers/firewire/core-card.c        | 13 +++---
 drivers/firewire/core-topology.c    |  3 ++
 drivers/firewire/core-transaction.c |  7 ----
 drivers/firewire/core.h             |  4 --
 drivers/firewire/ohci.c             | 18 +++------
 include/trace/events/firewire.h     | 61 ++++++++++++++++++++++++++++-
 6 files changed, 73 insertions(+), 33 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
