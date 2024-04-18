Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 854888A95EA
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Apr 2024 11:23:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rxNza-0001m8-Dc;
	Thu, 18 Apr 2024 09:23:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rxNzI-0001lE-Dg
 for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=b5uV8UhRzVktf5c7Ro3Gio5czUP975e887v2Xxyituo=; b=cYIkP9RkylXPuYuYifgv83w5jw
 4x+IILL8luw42DO+6CZmpKRTXlQnEdmANVtqjjVA60gCYxFqJDdemK99gbyCaSXY1ctU5J+O9Fbbx
 H1YgeqEIbs/xzdWx9uIsyaY7phEMBFGcpcml7h55Sa7j8O9iqwdN/FhBdcCv/A7hVrEY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=b5uV8UhRzVktf5c7Ro3Gio5czUP975e887v2Xxyituo=; b=R
 3yKVdaLyfD/LGpAIUh2rRJjjz3f4y2FUFA8cNuXonN5MyQmTAgrpacOAAMgiR+qK5YJvoauW/EFWg
 z6f//y2ETBVCtMg2PE/FRwrWeHAQ1mEwqx95kM3K9BqNs+87IlY8gJdzj24yhrR6UGSeXfPZw9h/N
 cbRbcVBc6l+pY7xQ=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rxNzH-0001PZ-Lx for linux1394-devel@lists.sourceforge.net;
 Thu, 18 Apr 2024 09:23:24 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailfout.nyi.internal (Postfix) with ESMTP id 4E0F313800CE;
 Thu, 18 Apr 2024 05:23:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Thu, 18 Apr 2024 05:23:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1713432187; x=1713518587; bh=b5uV8UhRzV
 ktf5c7Ro3Gio5czUP975e887v2Xxyituo=; b=OCOwZLhx5Dx1cIqlG4Dj32G1Um
 Smk0SucGCk78DBvddZXcMV2Fm4Mv/stnFwj2v6PWjGm1Nk6RrmF9hCElgcTMmErj
 uQH937teoa9i3Lgh04n810b/6dlXX0LtznKVMaHxZebdVKKLG1CWkE/O/Bks5YyH
 1dTAFGLBBq+d1XhoYFc8kbPKFNeIO6QTFAJc+qZoNm/bnNMsudpZKfD/804yIAMy
 MSuZFh7TfOj9owsWc2V3XZqoCTRHC30kbaR1QYSOLmA4kQQUdEat7yu7Gcve53Kj
 CqlQyvTt4ZCaCa29F7XeC3yR1TkYJD+I0vTqE5oQIMDdkOKJIpmAJk3F06sw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1713432187; x=1713518587; bh=b5uV8UhRzVktf5c7Ro3Gio5czUP9
 75e887v2Xxyituo=; b=enHVTZU8c75Uf5DkONAJl1L9MBH1u+xVi3oRL24IUivU
 uYU0EHPcBBGriOxzy2PdoTH48iNle8M7zPv7oberGjljNvyW9onmHGpEypxL3V6D
 dB3NkWzearEPEyOEyO4SS+EAykIJe6X9Lh5Xo24HBoRgSCultXEdpKZYinLgZ5d5
 vbWPx08Wlip9mVdtCGM7fL7a21wDWnh8JRwxbUi56MqceBmAg6k3NrRokuAuG49C
 1VcG9z43TBeGU9USY5ybyCyeTYaJt8nJPHbLbiCfzX6J1zz+oPpLajGriqS1Y6Ar
 jHrlyKzeAgnCgrQb5HDXhTJtqHsx+vs30wmv3tifYw==
X-ME-Sender: <xms:e-YgZuabLTlhFX7e9_S8EdqfudrR6YmANelvLt5y1Vxu6S3oKNY6wQ>
 <xme:e-YgZhYhesaiNMZQuvaTn5Kex6fWXBuY4JKfnewsY2441oXsOD4dpmRC6pvqss082
 rV-lh5Rfo9m_VF8cJQ>
X-ME-Received: <xmr:e-YgZo8yYsf6PU6fL_RZWLIAoCoIrkndaSq1gJAFxExJ1NWsCxrHWSg6P5lNJMOUqID79GlXH8fXUv3FgUcIPLFhpSyJoguvi8LVB7DLC8wW8w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudektddgudehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:e-YgZgpt8wA9jDIzJrY8_cnpFkalYu5wekAusk90aLEMMUzroUEguw>
 <xmx:e-YgZpotGIkYE4d7Ge335sRemqEdrg8D7564P7Bsxdi9FZsrquaqbw>
 <xmx:e-YgZuRiIi82SFG8tp5pJ7MxP_SnLmx7VO--hsOE3YvtBdQS9lB3ZA>
 <xmx:e-YgZpqESkvWz5b7XKHvzHlhM8Ozc14iVIDzpOIXAusaJJTr84KJPA>
 <xmx:e-YgZg2UfapCPgrrccKFcue7vQUuWQLgoTWZ6MQns28MZlUwQps_snqT>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 18 Apr 2024 05:23:06 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [RFC PATCH 00/13] firewire: add tracepoints events for asynchronous
 communication
Date: Thu, 18 Apr 2024 18:22:50 +0900
Message-ID: <20240418092303.19725-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In a view of IEEE 1394 bus, the main function of kernel
 core is to provide transaction service to the bus. It is helpful to have
 some mechanisms to trace any action of the service. This series of changes
 adds some tracepoints events for the purpose. It adds the following
 tracepoints events via firewire subsystem: 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rxNzH-0001PZ-Lx
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

In a view of IEEE 1394 bus, the main function of kernel core is to
provide transaction service to the bus. It is helpful to have some
mechanisms to trace any action of the service.

This series of changes adds some tracepoints events for the purpose.
It adds the following tracepoints events via firewire subsystem:

* For outbound transactions (e.g. initiated by user process)
    * async_request_outbound_initiate
    * async_request_outbound_complete
    * async_response_inbound
* For inbound transactions (e.g. initiated by the other nodes in the bus)
    * async_request_inbound
    * async_response_outbound_initiate
    * async_response_outbound_complete

When probing these tracepoints events, the content of 'struct fw_packet'
passed between the core function and 1394 OHCI driver is recorded with
the fields of header and packet data. For example of the outbound
transaction:

async_request_outbound_initiate: \
    transaction=0xffffb7e382373718 scode=2 generation=6 dst_id=0xffc0 \
    tlabel=59 retry=1 tcode=1 priority=0 src_id=0xffc1 \
    offset=0xecc000000000 \
    data={0x6000000,0x1000000,0x40000100,0x3000000,0x1000000,0x0}
async_request_outbound_complete: \
    transaction=0xffffb7e382373718 scode=2 generation=6 ack=2 \
    timestamp=0x2296
async_response_inbound: \
    transaction=0xffffb7e382373718 scode=2 timestamp=0x2297 dst_id=0xffc1 \
    tlabel=59 retry=1 tcode=2 priority=0 src_id=0xffc0 rcode=0 data={}

To provide the parsed fields of header, the series adds some helper
incline functions for this purpose, then refactors the existent code in
both core and 1394 OHCI driver with sufficient tests.

Takashi Sakamoto (13):
  firewire: core: add common inline functions to serialize/deserialize
    asynchronous packet header
  firewire: core: replace local macros with common inline functions for
    asynchronous packet header
  firewire: ohci: replace local macros with common inline functions for
    asynchronous packet header
  firewire: ohci: replace hard-coded values with inline functions for
    asynchronous packet header
  firewire: ohci: replace hard-coded values with common macros
  firewire: core: obsolete tcode check macros with inline functions
  firewire: core: add common macro to serialize/deserialize isochronous
    packet header
  firewire: core: replace local macros with common inline functions for
    isochronous packet header
  firewire: core: add support for Linux kernel tracepoints
  firewire: core: add tracepoints events for asynchronous outbound
    request
  firewire: core: add tracepoints event for asynchronous inbound
    response
  firewire: core: add tracepoint event for asynchronous inbound request
  firewire: core: add tracepoints events for asynchronous outbound
    response

 drivers/firewire/.kunitconfig                |   1 +
 drivers/firewire/Kconfig                     |  16 +
 drivers/firewire/Makefile                    |   8 +-
 drivers/firewire/core-transaction.c          | 239 ++++----
 drivers/firewire/core.h                      |  21 +-
 drivers/firewire/ohci.c                      |  78 +--
 drivers/firewire/packet-header-definitions.h | 234 ++++++++
 drivers/firewire/packet-serdes-test.c        | 582 +++++++++++++++++++
 drivers/firewire/trace.c                     |   5 +
 drivers/firewire/trace.h                     | 265 +++++++++
 10 files changed, 1280 insertions(+), 169 deletions(-)
 create mode 100644 drivers/firewire/packet-header-definitions.h
 create mode 100644 drivers/firewire/packet-serdes-test.c
 create mode 100644 drivers/firewire/trace.c
 create mode 100644 drivers/firewire/trace.h

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
