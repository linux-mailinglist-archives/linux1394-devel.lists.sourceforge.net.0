Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF78466260
	for <lists+linux1394-devel@lfdr.de>; Thu,  2 Dec 2021 12:35:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mskMu-0002qw-MW; Thu, 02 Dec 2021 11:35:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1mskMs-0002qn-1n
 for linux1394-devel@lists.sourceforge.net; Thu, 02 Dec 2021 11:35:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MWDOJiV7eBjWcPXOnu0j5XNbpzBsWzhlK6tNHfjT1Kg=; b=d6eVIn1F6RZ08NSBt25Rkif9tQ
 a2nizb27MxMPWEwd+0Spd+7qUGTqzhji3EJBKzRJH+0KTXOdfsCgui0Rr8913+GXWu1gSSDVGDPsb
 wsJnVb2NLA4TO86vVIVoSlkgi4f4w9f9/e0e7inBzd/56+jbVnZELqHm2aRibST6SjJo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MWDOJiV7eBjWcPXOnu0j5XNbpzBsWzhlK6tNHfjT1Kg=; b=B
 aFvJLHFthMHFe2srBAZHHIx/obyIW8AW8S0FngmmdmxqE3Ix6fbwrI+/hporhyLwLQJK93ezmknS6
 H/snwFuaNmuYsmE0yn1CCQR633FNKWtm8oSYofxwQFDrG8rjOlkahyUo7xMLxWPu1RMeozSj+jbTp
 eoEMkW+LS7kKINgA=;
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mskMp-0001c6-49
 for linux1394-devel@lists.sourceforge.net; Thu, 02 Dec 2021 11:35:13 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 3F5463201EE7;
 Thu,  2 Dec 2021 06:35:03 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 02 Dec 2021 06:35:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=MWDOJiV7eBjWcPXOnu0j5XNbpz
 BsWzhlK6tNHfjT1Kg=; b=LNyw9nr36KA0eyni69wBg2vuM1wXOUh5BTEIGrVX56
 nuznzaKvnEAPwWi5G9HzoNDeZS/RKrmqsQYj3/adcnlufbJB2tK8FvGFhr1pCKUB
 DcJok7uqPdEE8dG923rhisDT+3bkEQUW/xh1iZSv3OXfVNzrNYtegvOk+4SRP9X2
 gIKFcckcVwmCUgdSeA6rMfXBfobD023Do2nAkDMopsuavD5lnFto+kJCJJKGaRTv
 v3DBE4un1xRHNhiWhsxx/BmVb6M/gQm2BylQsQoBCcaYDs2vO7nsAy97ZX2cwUie
 ArPqB2pZ50UjaMuZ04OpSD3Ud/1n8zUZ8QXnDA90b1UQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=MWDOJiV7eBjWcPXOn
 u0j5XNbpzBsWzhlK6tNHfjT1Kg=; b=iwyrb1qC0yZh25MM/6bB9X72K/6jokl0i
 /bl98rWGP6KH6n5kZ5xK00oZxvRwYopuBnPuGVhUKXiOK2tM7oT5iyppkl+Fo9vY
 Qbk6YQFiUVMIzPbkJcW+sb6EYSKGxEk9BPkgEl/H2PNhYGFA0A83wqV2LZ68/6B8
 N3TK4iMBjKe7S8xP4lQqOG1qTN4f7It/GD0qQT79WFYDk46DJwDNsWtyJPZxG/Mz
 oBB7HNgNvapW8tojTel0KnwteFOT5bKhcvpSTth/qnmuilZKwUyJC1qSryPYLEjG
 mU4D/TaRmub5EQBAYDueyWCJHKtCHj0o/bQ2AxAqIHzxeuKvDJS3g==
X-ME-Sender: <xms:Zq-oYX7ZkaV_lTw5dPGjow9LRTNRA3YPkJMTg0NwLnKBdhF9zIaROw>
 <xme:Zq-oYc7qnpSRUeCgPjx7Hrrt62N0-CW6nSwfy4zp3kMZaRhQZMFRluPW6DodPi3iV
 F1lyxttaoQ_ivMDIM8>
X-ME-Received: <xmr:Zq-oYedl5x_hKzGL_FqW7naI2B5UjMwzvno5DuY33PBrh3Jjhsc-T8o_vXxXOuG3Tr29aHof5nlhiYncnvQAei3jMUnBGwO5XxvDObQPwxRUrH-PcDwv>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvuddrieehgddvlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeetieeuhfejkeekfe
 ehteeikedvgeefhffggfdvieehhefhheeivdfhgfejjeduudenucffohhmrghinhepkhgv
 rhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
 hfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:Zq-oYYJZ6wLcEDDuWCnfhCc9AIlWwJelJFGN9Zu-CwWU-TM5U4AyrQ>
 <xmx:Zq-oYbKsuyzHtogCRs2MvQriOJHqbhh93t_Pv5q4vj7f5Gl6BMW7YA>
 <xmx:Zq-oYRwQD7ovEoEP-gXySfSJ0ltxLcHAzg9inZN5SrqRyGF9FgQIRg>
 <xmx:Zq-oYYGgoMhV3_OC8HewPGIFDBZp4dwxD0rMc6YRW0P5PGsiKmk8Ag>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 2 Dec 2021 06:35:00 -0500 (EST)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: stefanr@s5r6.in-berlin.de
Subject: [PATCH 0/3] firewire: assist unit driver to compute packet timestamp
Date: Thu,  2 Dec 2021 20:34:54 +0900
Message-Id: <20211202113457.24011-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In 1394 OHCI specification,
 each descriptor of IR/IT/AR/AT
 DMA context has timeStamp field. The value of timeStamp field express the
 time in which the controller accept packet. The resolution of value [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.20 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.123.20 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mskMp-0001c6-49
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
Cc: alsa-devel@alsa-project.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, marcan@marcan.st
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

In 1394 OHCI specification, each descriptor of IR/IT/AR/AT DMA context
has timeStamp field. The value of timeStamp field express the time in
which the controller accept packet. The resolution of value is isochronous
cycle count (8,000 Hz) with second up to 7.

I have a plan to use the value of timeStamp field for ALSA firewire stack
so that userspace ALSA PCM/Rawmidi applications can get converted timestamp
(ktime) for PCM frame/MIDI message. The timestamp can ideally express
finer granularity than the time to invoke IRQ handler (and co).

Current implementation of Linux FireWire subsystem delivers the value of
timeStamp field to unit driver for IR/IT/AT DMA context, but not for AR
DMA context. Additionally, the way to refer to Isochronous Cycle Timer
Register in MMIO region of 1394 OHCI controller is transaction to local
node. It includes overhead of transaction and it's preferable to add
less-overhead way available in any type of IRQ context.

This patchset adds two functions exposed in kernel space:

 * fw_card_read_cycle_time()
    * allow unit driver to access to CYCLE_TIME register in MMIO region
      without initiate transaction
 * fw_request_get_timestamp()
    * allow unit driver to get timestamp of request packet inner request
      handler

I note that Hector Martin found kernel null pointer dereference during
process to remove PCI card and has posted a patch:

 * https://lore.kernel.org/lkml/20211027113130.8802-1-marcan@marcan.st/

His patch is included in the series with my comment for relevant commit
20802224298c ("firewire: core: add forgotten dummy driver methods, remove
unused ones"). The patch is required since unit driver can refer to dummy
driver between removal callback of PCI subsystem and removal callback of
FireWire subsystem.

Hector Martin (1):
  firewire: Add dummy read_csr/write_csr functions

Takashi Sakamoto (2):
  firewire: add kernel API to access CYCLE_TIME register
  firewire: add kernel API to access packet structure in request
    structure for AR context

 drivers/firewire/core-card.c        | 39 +++++++++++++++++++++++++++++
 drivers/firewire/core-cdev.c        |  6 +++--
 drivers/firewire/core-transaction.c | 18 +++++++++++++
 include/linux/firewire.h            |  3 +++
 4 files changed, 64 insertions(+), 2 deletions(-)

-- 
2.32.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
