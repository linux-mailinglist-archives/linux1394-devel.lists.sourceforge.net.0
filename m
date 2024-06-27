Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 219DA91A7C2
	for <lists+linux1394-devel@lfdr.de>; Thu, 27 Jun 2024 15:22:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sMp4K-00004y-Iv;
	Thu, 27 Jun 2024 13:21:45 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sMp4J-00004q-BA
 for linux1394-devel@lists.sourceforge.net;
 Thu, 27 Jun 2024 13:21:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4KbB6tEIppaeu+O5uCFPldgsfTP1h3ugpnHp8fkzIwc=; b=l3eU1lZi1N4CUtAzav9gYD9Ov7
 fbtpdY29xjSi7vcDMEynFIhEMWH/qOnzrrNC2wQSwK/M672jStBwKZ3+NMFuuLw8Fr+tJZN1vM42J
 ZNezqXrAdILPQF4vmKsxQqFAODXHpGKdT+6noad8S+IClL8Q0q7Joz0kqkFGA71Rl5mU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4KbB6tEIppaeu+O5uCFPldgsfTP1h3ugpnHp8fkzIwc=; b=a71u+Qu9SfMxiVHQRhAu7q13j2
 XNgu+f88G9pQuQRyR0+upaXw1Bda41vllrCDgZfHrp1gguxhrB7QvBOk8oxAaQ6vBprPGy0vVqFgj
 NT5T6CcZnv4XF674RocezwHHLHudlDeYeEzvZZKpWmc8CtdJh5Lj/rRpBtVQoq4sIfP8=;
Received: from wfout4-smtp.messagingengine.com ([64.147.123.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sMp4K-0001qk-3E for linux1394-devel@lists.sourceforge.net;
 Thu, 27 Jun 2024 13:21:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailfout.west.internal (Postfix) with ESMTP id BF0F01C00090;
 Thu, 27 Jun 2024 09:21:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 27 Jun 2024 09:21:36 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719494496; x=
 1719580896; bh=4KbB6tEIppaeu+O5uCFPldgsfTP1h3ugpnHp8fkzIwc=; b=Y
 20+yAcKaBXLBlj0eE0kAETf2Gx+3EfHlrZ+GWobssGPTLGooU11UjPscF7crPeGA
 iDvXJOFu2GsG0fRsVmA0lIa0pKMg0U9M3fAo307VYQhuLQXkKK0f3ZGQ72HUoxBJ
 l8A7367NbvIBi05jXsRqc2y2dgpKhqb20+Ujo7TvtNZIC1q698P8FmPDtiDNXu30
 Nwtoxao7BlIqyo9xRCjMkNyhl50gJryrTtYhjqpozShC1Agmz0gjmcR04z94iTa6
 yzHNIUPwikupOAsVn8Eq4sOdgCDuT2xnvUyFHDSuQDQHkR/G7ZbkaSqpoyk3ITUj
 dY64v0CQI/rmnZ1DjrCFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1719494496; x=1719580896; bh=4KbB6tEIppaeu+O5uCFPldgsfTP1
 h3ugpnHp8fkzIwc=; b=ugd8S80YQxcdvijyqknDpj8t90iv3EEebfk3tDKkjDsN
 MhncbMwn1eoxhnb149xGQkKDvk9EUNMWCrM1iFodxwRdGZBqcwlKkotcQ5FdCQSv
 Ip6T5f8AMVIqh7EzlDfAKy+t+h2JGJdcvrCUox0PhTVi31MR0CLaaUjk7HaKicG8
 MbRf57y1LiKhGoDjHOG56UCXuDQwzFDfdLJsMNNOZeJxlHqgxPGDuzqKPPcaoJrV
 GDwH8f9+1G3O36B/1P0xkdDOqxeSj9PM3/2I1Fl8xvMZ0Muqiei2otbmPqS+CIl6
 LbPwD63QKjkENq/DPiQy976yuk2LH/0eahq5vaHNKg==
X-ME-Sender: <xms:YGd9ZsXl0t075tdWRiM8wlRicdEzoT02fQARt0xl02YCkDNa-7X5ZA>
 <xme:YGd9ZgnvzNyrFuOr9xu6C6UF2eSASw03D3ffnNyQAo260ptqK1MOPnRRR08OOF9et
 qavIvgej4sDSMct8OA>
X-ME-Received: <xmr:YGd9ZgY1sEMK1oKw4b-O0Fi-tP_UhuV5fAsPzrfXCPIcjsu3uczC07F0WpDUZ3AuCSNOCQ1iFbLGtoTdOoU0zcGXdwJPeAIFXms>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrtdeggdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtre
 dttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfette
 fgkedvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihessh
 grkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:YGd9ZrVjFXywwH0ldYYHxdeCXzf-Hn7nZMlB0ovgrhfAmT1W4Tj7cg>
 <xmx:YGd9ZmnWzykEK6WnCDvt6wEiie7rigcov-yaX88V4G5cwO-bWRm3OQ>
 <xmx:YGd9Zgc90799wuNrmJ3GKuJq_PJm0kIpMthksfHJ2fAezsheO4Wctg>
 <xmx:YGd9ZoHX1jyzlACOebZUlM0KjMqpQ0qsCCt9dpgk6H7w7XnOe5Kvqg>
 <xmx:YGd9Zrzn7Wrk4v7Zs_NVMMBCa2LBl4k5SfCDYsFDiYPBlbM9lkit9yXg>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 27 Jun 2024 09:21:35 -0400 (EDT)
Date: Thu, 27 Jun 2024 22:21:35 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/2] firewire: ohci: add support for tracepoints events
Message-ID: <20240627132135.GA965648@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240625031806.956650-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240625031806.956650-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 25, 2024 at 12:18:04PM +0900, Takashi Sakamoto
 wrote: > Hi, > > 1394 OHCI hardware triggers PCI interrupts to notify any
 events to > software. Current driver for the hardware is programmed [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.147 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [64.147.123.147 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [64.147.123.147 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1sMp4K-0001qk-3E
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

On Tue, Jun 25, 2024 at 12:18:04PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> 1394 OHCI hardware triggers PCI interrupts to notify any events to
> software. Current driver for the hardware is programmed by the typical
> way to utilize top- and bottom- halves, thus it has a timing gap to handle
> the notification in softIRQ (tasklet). The Linux Kernel Tracepoints
> framework is enough useful to trace the interaction between 1394 OHCI
> hardware and its driver.
> 
> This series of changes adds support for tracepoints events to the
> driver, and adds an event, 'irqs', so that comparison of the event and
> any event in firewire subsystem is helpful to diagnose the timing gap.
> 
> Takashi Sakamoto (2):
>   firewire: ohci: add support for Linux kernel tracepoints
>   firewire: ohci: add tracepoints event for hardIRQ event
> 
>  drivers/firewire/ohci.c              |  4 +++
>  include/trace/events/firewire.h      |  1 +
>  include/trace/events/firewire_ohci.h | 47 ++++++++++++++++++++++++++++
>  3 files changed, 52 insertions(+)
>  create mode 100644 include/trace/events/firewire_ohci.h

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
