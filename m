Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D688FDAE7
	for <lists+linux1394-devel@lfdr.de>; Thu,  6 Jun 2024 01:52:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sF0Qf-0001Pk-K3;
	Wed, 05 Jun 2024 23:52:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sF0QS-0001PF-L4
 for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Fiy9hqDbM4Tn7rMtDl155r1TRdgLzNnb58yHVTsN+CE=; b=h0I2EvI4Wjsn07FOhoxBcoSsWy
 uZh6JvQyeaS+aOgvyHN5hpBCoPhAs0Ynwwhgh9DhizgN+88k9ActwuVZp5sPyNbSYKOgMcotWo2ee
 0CJ4aF0ZUawE5LxlelbhBTin6j+j3H2vR5kREq6Tc/SfOESs2Wuq+e0R7dtVhtSARv08=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Fiy9hqDbM4Tn7rMtDl155r1TRdgLzNnb58yHVTsN+CE=; b=i
 ka+4UGb0M87/bggb7YWflZLXe3SVHC0h6PxEmbjmzRfLezAGpq0kev6L//7CWF0LdRKVPbaHlZg+p
 ZMoxUtf8H8XNyeVtb2yaLXRlQYkftSy4ozbhrCEEIolwNOdxQQBMohMcK/1olcHkpDO2Qw1+4FU8L
 d5ajVwsvdY96XrUI=;
Received: from wfhigh5-smtp.messagingengine.com ([64.147.123.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sF0QP-0004Y3-3q for linux1394-devel@lists.sourceforge.net;
 Wed, 05 Jun 2024 23:52:13 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfhigh.west.internal (Postfix) with ESMTP id C966F18000BC;
 Wed,  5 Jun 2024 19:52:00 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 05 Jun 2024 19:52:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm1; t=1717631520; x=1717717920; bh=Fiy9hqDbM4
 Tn7rMtDl155r1TRdgLzNnb58yHVTsN+CE=; b=dCkjvKZ+1Z6m6JkV2utfIVRELm
 Qh7ZgCXO/1TVNwrwhe+z0NhyKWxeTmwUD8ELvXGUbWgHGGP5AhjDhmTZLO9AW/hj
 DNWqdBwcM2nS+N19y1dYOaL/FK/NEtnQX8BAZFrAJWZInhbsRmeyrpPexBPOT4lf
 YajDs+cP1U8RxA5B6yv0zASOQOlK3g7T84CEkqhOKJsiF0ftMedEGZOfZ37aBQ0H
 /sgondso1ib5LNaBjpm/TE87xXqWNcSZHdoSGwdiwVp61HAodvgrFbXAmAeIW5JA
 F2W38sRAL99GGAV9qQve0wHdlda1QEojQ9IpP3lUmBLTFSNv7EL9uYxYVkxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1717631520; x=1717717920; bh=Fiy9hqDbM4Tn7rMtDl155r1TRdgL
 zNnb58yHVTsN+CE=; b=plSjkLyeM01TFD+QNsQPWHogM1Y44wUqWCLxabwfgOVq
 1vycik6jUDG8MO/TdPE6zAxtGwc4lH4w6sw6DyqXgY/7ChTEQbowMavDxHRg0rU2
 1O2igghBO/BL1p5l2Psl7CAiPCVg7i/eygwZrAg7z8RgU43BA4PNPwYsbSbiVMr7
 tZEJo4g8WnoB/ipIPuFFZSTwYNTRsTTGrrkLJjsLPaRnPTApI9WdhLcVIpGtRv+P
 i/lzXacKhS/4XkDSvFWneF/Se9sDiUKH8yxcNpmO2UoYnd6ksUKlnLnhx1k8kJ9M
 GdOAYYQr2FGfNHtqgM3QrTf16gBR5kZIcRMwxtL2rw==
X-ME-Sender: <xms:IPpgZiF4vFRzvfsVhlglMWHPpw1uoiYTWgIi8cziGjuhLjVniK00-Q>
 <xme:IPpgZjXojgx0mY8gjhhZLqBbAzQq4tQU9p-EiVEUs3UpgH3ZQ70Ui_rigem5PatJk
 FbFYHuYZP7OUc977IM>
X-ME-Received: <xmr:IPpgZsLUtLt1PgnG5ph8JqXpMEJzMPWkZhXNLrRZvgoX2vCQlxyHV-wUPmz8WxNS2TzxnPZNaeMiX6aBdb-KWbShDkqCcOFJrU6Oc5sN5htggA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdeljedgvdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:IPpgZsFO4AaTzsF0qwLVNZiOXlfm-ZaDwMrX6JZRXFA44ybXuBtsNQ>
 <xmx:IPpgZoWycqg1u5TF-HJeHIgbtT5cyZF0dAIY9vXfG28c5sPeJxUKXw>
 <xmx:IPpgZvMcvC5K75D_CsxeHNJvC2xtwyHA_w3dXpOgMoQ2nUCV9JL9oQ>
 <xmx:IPpgZv02vMSFWxvr0EbJdT9z6jPsyoTl3hfaUqMH2tOLZeOYwRT_XQ>
 <xmx:IPpgZlirrRigZiQM-rEsQlKwmlPPrK7M54vqib1OEezAZr20bl0dnu69>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 5 Jun 2024 19:51:59 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 00/11] firewire: add tracepoints events for self ID sequence
Date: Thu,  6 Jun 2024 08:51:44 +0900
Message-ID: <20240605235155.116468-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, In core function, the enumeration of self ID sequences
 is the first step to build bus topology for the current generation. Currently, 
 1394 OHCI driver has a module option to dump the content of self I [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.156 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.156 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.156 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sF0QP-0004Y3-3q
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

In core function, the enumeration of self ID sequences is the first step
to build bus topology for the current generation. Currently, 1394 OHCI
driver has a module option to dump the content of self ID sequence, while
it is implemented by printk. My recent work is going to replace such
logging with tracepoints events, and this series of changes is for the
self ID sequence.

The content of self ID sequence is delivered by a kind of phy packet,
and its serialization and deserialization codes exist in both core function
and 1394 OHCI driver. They include some redundancies, and the series of
changes includes some inline helper functions to replace them.

In the series of changes, some KUnit tests are added to check behaviour
of the enumeration and the helper functions.

Takashi Sakamoto (11):
  firewire: core: add enumerator of self ID sequences and its KUnit test
  firewire: core: add helper function to handle port status from self ID
    sequence and its KUnit test
  firewire: core: minor code refactoring for topology builder
  firewire: ohci: minor code refactoring for self ID logging
  firewire: core: use helper functions for self ID sequence
  firewire: ohci: use helper functions for self ID sequence
  firewire: core: add common inline functions to serialize/deserialize
    self ID packet
  firewire: core: use helper inline functions to deserialize self ID
    packet
  firewire: ohci: use helper inline functions to serialize/deserialize
    self ID packet
  firewire: core: arrangement header inclusion for tracepoints events
  firewire: core: add tracepoints event for self_id_sequence

 drivers/firewire/.kunitconfig                 |   1 +
 drivers/firewire/Kconfig                      |  15 ++
 drivers/firewire/Makefile                     |   1 +
 drivers/firewire/core-topology.c              | 219 ++++++---------
 drivers/firewire/core-trace.c                 |  18 ++
 drivers/firewire/core-transaction.c           |   2 +-
 drivers/firewire/ohci.c                       | 148 ++++++----
 drivers/firewire/packet-header-definitions.h  |   2 +
 drivers/firewire/packet-serdes-test.c         | 255 ++++++++++++++++++
 drivers/firewire/phy-packet-definitions.h     | 247 +++++++++++++++++
 .../firewire/self-id-sequence-helper-test.c   | 152 +++++++++++
 include/trace/events/firewire.h               |  61 ++++-
 12 files changed, 935 insertions(+), 186 deletions(-)
 create mode 100644 drivers/firewire/phy-packet-definitions.h
 create mode 100644 drivers/firewire/self-id-sequence-helper-test.c

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
