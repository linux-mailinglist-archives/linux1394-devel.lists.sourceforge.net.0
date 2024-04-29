Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E859E8B6600
	for <lists+linux1394-devel@lfdr.de>; Tue, 30 Apr 2024 01:04:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s1a2L-0000Kg-Vt;
	Mon, 29 Apr 2024 23:03:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s1a29-0000JI-VD
 for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 23:03:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K+c+sH63BiPGJ2Wmw3IsKpfMFV4YwbVEQrdKejkRx6c=; b=YMlladRrN+Ixlhzc9BSYffVRWC
 gfijvS33pvcuN6nqOeKyJ7ZZy9yyVulA9Ep+E4rL56olJXgscUKA8X+NQPkBGkaju0ieyWpj0BZ1s
 XFA0kUbcFSQ1tKMjMb2XutHiD8XT/Ok0qeE5qGYs8u7NSX3s9yzqGWuZkggXS44oZYF4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=K+c+sH63BiPGJ2Wmw3IsKpfMFV4YwbVEQrdKejkRx6c=; b=Arpqz/cEF390hnmjVDOmqAFxiP
 mMUYcSqP6Pl3v7oovghGFw3Rq0LHYVd2MQuJbH5LGWQvgg1au8x6mo8W1c+r6GOQgfZOO0VQN5qfu
 Am4zataD/ndu7CHQAOjntOyMrFHJchBqcp1UEiiOM1WUjtMuw9VXajDBd/39Ua558ng8=;
Received: from fout2-smtp.messagingengine.com ([103.168.172.145])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1a29-0004U2-9c for linux1394-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 23:03:42 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id 30A3D1380198;
 Mon, 29 Apr 2024 19:03:31 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Mon, 29 Apr 2024 19:03:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714431811; x=
 1714518211; bh=K+c+sH63BiPGJ2Wmw3IsKpfMFV4YwbVEQrdKejkRx6c=; b=j
 e7bNo/TF9nS0qc8RPQJ6B2DHFjEwMGsn6dDCMd9yni8kkHE9L8DGc2IpjoG82PX7
 g4N8FPStaNPfgCXsULN6ZiV9+U5VhO3gP8tMw+slcUUEznQLf5FWH9D8qkdmJPs6
 7/XOnH+LmLdiqx8UM8d94roq1QycfUr3eGzzE4KYd76bMbD1ICPQJVaOX1G6AweK
 HfMWDrkCE2mBL02GMnRu0saRBq+dZ21zDt9B4AJjmijMGnRjMiieL1zgf3IzWRu8
 NX2Yu/69JY4jvQmqoyLDD4ZoodhHxK0O74IYsc9rZi5a984uwnFVedDW9407Y4bp
 OSMkQ1RDzjbaBHfXAxdjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714431811; x=1714518211; bh=K+c+sH63BiPGJ2Wmw3IsKpfMFV4Y
 wbVEQrdKejkRx6c=; b=TNvWvhMOW1ESaDNWK5eVynB5Jn+ON01UcLFu3aUAjIo4
 TCXg512RBA7Kn2EW7UwrMSxLW2W3jzHNYlBAn1hjagLuYCFrWPeG+1yD9VJO+mS1
 GNcLk1i6VSGwdJgDi/VHjCuJcEREbj2dMLvukrShhw+1gekxf+7h08E45QaLSaPR
 B37NICXnRKfnNGBDLDGkoI1Zy7xUW5MgYA5Y27I+kaKCiAkPTnwJUwQBWe28bR3f
 sy8VjY2GmnC0v1RzQAhWX8svHiHtWP6X5CefGkbUQ+TYg56w5lvXRQkOMhAx9a3X
 ktI6yAA7Jqllcz48TqNO3re5E1L6rT5jHKTb7uBB4w==
X-ME-Sender: <xms:QicwZpvqcIT8Z3Nq0mgBledsP6nErmKBMT7xupHLJVbnDwUDb4OgCA>
 <xme:QicwZidCtc-ba7WOwMP7-uYKBiu07g3jnptOnZRzs0ymoD7HV1zWDrBdKMZj17yq1
 w_VjbGL_NGqV59kNP0>
X-ME-Received: <xmr:QicwZsyM8A4jGFHfy-c-90_DZw64T-a2PyJPdbZyyKXdhFg_9IyC0N95k9l8gXiUOcc05rcs5nO3JkQJIyITHGiKNb-HDxYJyyk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvdduvddgudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeevieelhf
 dukeffheekffduudevvdefudelleefgeeileejheejuedvgefhteevvdenucffohhmrghi
 nhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
 hmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:QicwZgOn3nPTZzfHhIry0SXNMyCDp9EmntvwZDdcdTyzWKkt_cIceg>
 <xmx:QicwZp-S4Sx0UTQEUVjMrfKVv5Q5chm71mlCS_wDzvGQWDKqQg5xfw>
 <xmx:QicwZgXkQFOqodGsoP8CYP7xkhQ-OcOQ84Be44nRDLPnyc4Yc1HnHg>
 <xmx:QicwZqclt7wVGrtil--pbZdyltaonBuZ2ACxtPZSLImpg0rpbZnRvA>
 <xmx:QycwZrK06pEAtsUwGCLUnSyEr3RrKrc2VCydvgk6gePVD2ikE0L39u_V>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 29 Apr 2024 19:03:29 -0400 (EDT)
Date: Tue, 30 Apr 2024 08:03:27 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/5] firewire: add tracepoints events for asynchronous
 transaction
Message-ID: <20240429230327.GB714896@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240429043218.609398-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240429043218.609398-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 29, 2024 at 01:32:13PM +0900, Takashi Sakamoto
 wrote: > Hi,
 > > The series of changes in this patchse is to revise the previous
 RFC: > https://lore.kernel.org/lkml/20240418092303.19725-1-o [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [103.168.172.145 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1s1a29-0004U2-9c
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

On Mon, Apr 29, 2024 at 01:32:13PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> The series of changes in this patchse is to revise the previous RFC:
> https://lore.kernel.org/lkml/20240418092303.19725-1-o-takashi@sakamocchi.jp/
> 
> In a view of IEEE 1394 bus, the main function of kernel core is to
> provide transaction service to the bus. It is helpful to have some
> mechanisms to trace any action of the service.
> 
> This series of changes adds some tracepoints events for the purpose.
> It adds the following tracepoints events via 'firewire' subsystem:
> 
> * For outbound transactions (e.g. initiated by user process)
>     * async_request_outbound_initiate
>     * async_request_outbound_complete
>     * async_response_inbound
> * For inbound transactions (e.g. initiated by the other nodes in the bus)
>     * async_request_inbound
>     * async_response_outbound_initiate
>     * async_response_outbound_complete
> 
> When probing these tracepoints events, the content of 'struct fw_packet'
> passed between the core function and 1394 OHCI driver is recorded with
> the fields of header and packet data. For example of the outbound
> split transaction:
> 
> async_request_outbound_initiate: \
>     transaction=0xffff955fc6a07b30 generation=5 scode=2 dst_id=0xffc0 \
>     tlabel=18 tcode=9 src_id=0xffc1 offset=0xfffff0000984 \
>     header={0xffc04990,0xffc1ffff,0xf0000984,0x80002} data={0x81,0x80}
> async_request_outbound_complete: \
>     transaction=0xffff955fc6a07b30 generation=5 scode=2 status=2 \
>     timestamp=0xeabf
> async_response_inbound: \
>     transaction=0xffff955fc6a07b30 generation=5 scode=2 status=1 \
>     timestamp=0xeac2 dst_id=0xffc1 tlabel=18 tcode=11 src_id=0xffc0 \
>     rcode=0 header={0xffc149b0,0xffc00000,0x0,0x40002} data={0x81}
> 
> Takashi Sakamoto (5):
>   firewire: core: add support for Linux kernel tracepoints
>   firewire: core: add tracepoints events for asynchronous outbound
>     request
>   firewire: core: add tracepoints event for asynchronous inbound
>     response
>   firewire: core: add tracepoint event for asynchronous inbound request
>   firewire: core: add tracepoints events for asynchronous outbound
>     response
> 
>  drivers/firewire/Makefile           |   2 +-
>  drivers/firewire/core-trace.c       |   5 +
>  drivers/firewire/core-transaction.c |  93 +++++++-----
>  include/trace/events/firewire.h     | 211 ++++++++++++++++++++++++++++
>  4 files changed, 276 insertions(+), 35 deletions(-)
>  create mode 100644 drivers/firewire/core-trace.c
>  create mode 100644 include/trace/events/firewire.h

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
