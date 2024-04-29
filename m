Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6448E8B5038
	for <lists+linux1394-devel@lfdr.de>; Mon, 29 Apr 2024 06:32:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1Igt-0000rD-81;
	Mon, 29 Apr 2024 04:32:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1Igs-0000r2-N6
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 04:32:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SOhiZLaSJMK3vRwXHVf80avqHnvi4hJiW4QMdFB5tDo=; b=Dzi+Bp67RLcUx2ugijob0I/o9+
 QR+Brq9skxH8ZxinihTy1/Jey3pIpAueu989RfuIk3+RwHPF0mr5ptYYLPm9vf6l0yfemWgJ8ro5r
 MbF4qRh9Vp5+ThjPBgZNqymmuuIe3ROUdpxAva12mEz1y76AEohd8NZsBlo3iVAPKhkE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SOhiZLaSJMK3vRwXHVf80avqHnvi4hJiW4QMdFB5tDo=; b=B
 QWqqLuiYp80Az7yJOVlCS36145EWnZgLY4+nYv3ioXDg3cd36khxNMOkBtu4sN1P9HCAc/0zAxY29
 vdPT2G9USWdoKs15O0D0NZYGjs5TgeFw4CCB/m+jeavC1PWR4xoT3JN9HXh4ym2NNnSYsVRDEBfF5
 U2sRMI6hGR1b3XKw=;
Received: from fout6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1Igr-0003BJ-CU for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 04:32:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.nyi.internal (Postfix) with ESMTP id 46A831380228;
 Mon, 29 Apr 2024 00:32:23 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 29 Apr 2024 00:32:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1714365143; x=1714451543; bh=SOhiZLaSJM
 K3vRwXHVf80avqHnvi4hJiW4QMdFB5tDo=; b=IYdEDpOalzPZbEZWa3eINnTYv8
 vrwutmxYOYrGrhUl8ZRkMmgvTcQKnr5cPPsMCwNXPGq/TN8wXIUk5O/8auutTncO
 A8DiQR4xHgaLVLJs/stCK80DS7KyeCAE913DSg9VvJQuQ9Csj+wZqzxkwzDq4RQ2
 nZD9ZcTQJ2uXLIRX8wksGI8CREOPZkrgwvI/Tv5OcZwdlI8qYxKsIElBLq5WQ2ZH
 vRgx2bngFmk0qBg0wmkcMfoipjEQnnUqgHovp9SBe5yu3AXvB62dL3jJj4eiM2mz
 Iv/61JytAp4uNtrMRcnP/XLYYn/5io2w7cf+59yrZ/3CBc2KIXO14+myRHAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714365143; x=1714451543; bh=SOhiZLaSJMK3vRwXHVf80avqHnvi
 4hJiW4QMdFB5tDo=; b=XWtCMm3XCG3Pi8vbCsp6ih+BY8w+rqdO2u2dHd9BGywE
 NJgUpGETTb6ToJuXEuJwWp+pfD6o3W8ziW1M9YUpWQ8rrcPHz3Ej2OCzlFT/XW87
 z1RH35nTl7zKXel40F6ONWWNe5h9+u1Cc/H69jWhRE6X/U6XsyGL/TrQfCh5VArJ
 LUms+OzzdgXdIvs+Rth7tP6ng4/i11MmXLY8RM88DrQVJiVSm2fuW7UMNWco8LQD
 SPgxy6OS0M0KB2tQOwyuQqHalnp4QXptbGmSsU7z1E1orsRLzZ3eMlrM+fl5fRsp
 DmTU529PNI1yaTS3WTEkpLgElyyB4oTmtOKaIMpuqw==
X-ME-Sender: <xms:1yIvZo4TJMBShdOty7YQF9qWl8wJL3ToH3-AUggp7dH4hTPqWlBKGQ>
 <xme:1yIvZp4DzKtypy3bfqQXFaoVr1YVbTLiLNwQQGeAl3V8jkWfjBvfanJ9eSM0cSr4-
 JB5zIPhpSfNh9NVW-0>
X-ME-Received: <xmr:1yIvZnfWJcI0jvM1F6OIQh3yS0QYkK9Wut3NcnUKEvTnu3kvY1qc6ASO2jdb0RJkNbckLfdAjGlTwX2es_fKjt0-ztuP2B6lUlW_u0tyA4ggIw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddtledgtdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeeggfehleehje
 eileehveefkefhtdeffedtfeeghfekffetudevjeegkeevhfdvueenucffohhmrghinhep
 khgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
 hilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:1yIvZtKmYtVRBqZY0WQISGaNIQS8sNCVI07p3e1CAp2WG-CJov3ywg>
 <xmx:1yIvZsJ3vZ5CGODP9Aa88Q2ezF-ljH1dVJ3tkh4JuE8gmrMAkaWpYg>
 <xmx:1yIvZuzlAvQbYXM6sBji1Dd3QYNCiOjoFfek3LqA8W9RJ86aRbTczA>
 <xmx:1yIvZgJ_-4_XksZ0KycyF3dmmBwd1Yfw8zhjCPgt9jAOMn_GIjfh6A>
 <xmx:1yIvZjX7oq1zWA8vNxis0y--8L7YmUOSCKrxPBjG00PKnTwvxiUDZpi4>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Apr 2024 00:32:22 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/5] firewire: add tracepoints events for asynchronous
 transaction
Date: Mon, 29 Apr 2024 13:32:13 +0900
Message-ID: <20240429043218.609398-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, The series of changes in this patchse is to revise the
 previous RFC:
 https://lore.kernel.org/lkml/20240418092303.19725-1-o-takashi@sakamocchi.jp/
 In a view of IEEE 1394 bus, the main function of kernel core is to provide
 transaction service to the bus. It is helpful to have some mechanisms to
 trace any action of the service. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.149 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s1Igr-0003BJ-CU
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

The series of changes in this patchse is to revise the previous RFC:
https://lore.kernel.org/lkml/20240418092303.19725-1-o-takashi@sakamocchi.jp/

In a view of IEEE 1394 bus, the main function of kernel core is to
provide transaction service to the bus. It is helpful to have some
mechanisms to trace any action of the service.

This series of changes adds some tracepoints events for the purpose.
It adds the following tracepoints events via 'firewire' subsystem:

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
split transaction:

async_request_outbound_initiate: \
    transaction=0xffff955fc6a07b30 generation=5 scode=2 dst_id=0xffc0 \
    tlabel=18 tcode=9 src_id=0xffc1 offset=0xfffff0000984 \
    header={0xffc04990,0xffc1ffff,0xf0000984,0x80002} data={0x81,0x80}
async_request_outbound_complete: \
    transaction=0xffff955fc6a07b30 generation=5 scode=2 status=2 \
    timestamp=0xeabf
async_response_inbound: \
    transaction=0xffff955fc6a07b30 generation=5 scode=2 status=1 \
    timestamp=0xeac2 dst_id=0xffc1 tlabel=18 tcode=11 src_id=0xffc0 \
    rcode=0 header={0xffc149b0,0xffc00000,0x0,0x40002} data={0x81}

Takashi Sakamoto (5):
  firewire: core: add support for Linux kernel tracepoints
  firewire: core: add tracepoints events for asynchronous outbound
    request
  firewire: core: add tracepoints event for asynchronous inbound
    response
  firewire: core: add tracepoint event for asynchronous inbound request
  firewire: core: add tracepoints events for asynchronous outbound
    response

 drivers/firewire/Makefile           |   2 +-
 drivers/firewire/core-trace.c       |   5 +
 drivers/firewire/core-transaction.c |  93 +++++++-----
 include/trace/events/firewire.h     | 211 ++++++++++++++++++++++++++++
 4 files changed, 276 insertions(+), 35 deletions(-)
 create mode 100644 drivers/firewire/core-trace.c
 create mode 100644 include/trace/events/firewire.h

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
