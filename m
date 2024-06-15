Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CF5A90963C
	for <lists+linux1394-devel@lfdr.de>; Sat, 15 Jun 2024 08:02:11 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sIMUB-0004rI-0Y;
	Sat, 15 Jun 2024 06:02:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sIMU9-0004r8-54
 for linux1394-devel@lists.sourceforge.net;
 Sat, 15 Jun 2024 06:01:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ut+CKX+eYnOgJHTPoNOfgg3PZFekCdvoV0ptxsFX8P4=; b=h+QiN3TG/304Ys/MlfNHY4A66J
 eQSry2b1XTlckpWvPmEychMfWNXuECFKKVEv4Bwp17EcBQ06VSJOZtwto+tsv6PLgNA4gg0puAB8d
 TBi2ka6AUcyEfJXXYUK4UQydH7gBIayi4AYsqLK55flk9y2e5AMitLmMtgkahLCeUejw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ut+CKX+eYnOgJHTPoNOfgg3PZFekCdvoV0ptxsFX8P4=; b=bGgf8YSMIA4Bko1IRAAwGJ16dH
 qKMy4ysA8mbqPG3Gj5TYhbrMqIKVsVya4JQ5CbSUodAOzZAiBZUtzJYyyVPrFcVQxEy/vN25w2TAZ
 3+1RiuCJ6xTvOlyXAa6tvNUXJVsatmmC6tMGkrSgTlfKRL5ikHILQdvaWNGvcHkZUtPE=;
Received: from fout8-smtp.messagingengine.com ([103.168.172.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sIMUA-0002Aq-AY for linux1394-devel@lists.sourceforge.net;
 Sat, 15 Jun 2024 06:01:58 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailfout.nyi.internal (Postfix) with ESMTP id EADBC13802E0;
 Sat, 15 Jun 2024 02:01:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 15 Jun 2024 02:01:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1718431306; x=
 1718517706; bh=Ut+CKX+eYnOgJHTPoNOfgg3PZFekCdvoV0ptxsFX8P4=; b=M
 IeIXuv6UsRJTUvaKnxGh+dyKSt0FqTUQSpZU7Op/eB4ab+9ZBrQI8SIhdrg71lAc
 TBvcbD+2914XUalxlPnLkWsisoMl2Me0w8pAmRTEK17GW8YDvNfficb3Ns0fzzWr
 ySTe8sL0OQv97QXchCbG+9kpysJornRPljyCk+nVDjQwclXyrRKS1H3qa8IYUnoj
 9zgfLX0HL6cZJtf8xtmQDz9qS2BqvQs0g2X6RqijRZuP2eo6qxHjX6RW4Z2ywkLa
 I/ac/E8M/Dtdwu/aMQQdeholtq/LI0YkxWwd0oYyJHARU/jztUR9tW3pG+FjPvXe
 WNEJWeI5eZLWvyhUGg9XA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1718431306; x=1718517706; bh=Ut+CKX+eYnOgJHTPoNOfgg3PZFek
 CdvoV0ptxsFX8P4=; b=RTwuwVLTWHaQn6lHJlKNTsDg6e6SgMfwd8+PXUNFYSF/
 NPdoOCeKi27VTIL+lkx4ephbg/A4lEam7NE4+37wPwUwdUrnV17lMjWcdK1iGzQz
 Am5t72LKD1RAdAYLOaB76nrDKqptp76KQpAcMBr8+NklcizglcGCYHK5xc03pEvj
 QFi58nUAtAxSF3mrmvMMA+nCsQmk9T7lCKe12ztkEbVLyKzkiM1JRXtNkjXm33zn
 PIsTHZj+oNEbxEhz5NLW2CIpAC2NXhsG+6U/tEIdqlAs7o5hg3tl5E8woCwyYIMP
 sSUdWytuTxIqbgB5B5ZsbN/I/LiBnPueQvcNSvzaVQ==
X-ME-Sender: <xms:Si5tZsHeneIYr2DFcYsa6fAlzIouPLLxl4FNqy0dO6Tpvf3KXHu6GA>
 <xme:Si5tZlVaO1NtKEjFXwmnpGJfjO300ojv15w8b4-cIjwesRrXDZ43eeToWjtq_nug6
 1v6in79WeBZx1-GPKg>
X-ME-Received: <xmr:Si5tZmIsKre5V2qpsQwuIVbNiibR5aW00m5BhjOhBjfr12nq10ZClfxHv-GLNei3_xmHHS99YpHOzVGFfAoeFMflsYj7tjsGuiZY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfedvtddguddttdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesth
 dtredttddtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgr
 khgrshhhihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhf
 ettefgkedvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhs
 thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhih
 esshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:Si5tZuFdEAyXGcBC7RniVCQ4G1Fl2qIrluXWWxOi_EJ-2cOH-fwJFg>
 <xmx:Si5tZiXj_7y0bJSONoWhmxMCP0p4Vtu7xVxhYFYe0naP-A71JmSLvg>
 <xmx:Si5tZhORCVwgppsXhFBCCvj6LDzBwtKdtbsfxiL4ikFGg3quWR3_3w>
 <xmx:Si5tZp1oi3JiYetMLlt4enaYii_6WlLnTEMXSmwfaug7kaW684ymjA>
 <xmx:Si5tZvhPNNdyiL2JrS7Pe4CTCB1pOcqPYhzrHkE40AbtYnW6eBh7HXx9>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 15 Jun 2024 02:01:45 -0400 (EDT)
Date: Sat, 15 Jun 2024 15:01:43 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/8] firewire: store the numeric identifier of card in
 data structure for tracepoint events
Message-ID: <20240615060143.GB497879@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240613131440.431766-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 13, 2024 at 10:14:32PM +0900, Takashi Sakamoto
 wrote: > Hi, > > In v6.10 kernel, some tracepoints events are added to record
 > IEEE 1394 asynchronous communication. In the case that multip [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [103.168.172.151 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.151 listed in bl.score.senderscore.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sIMUA-0002Aq-AY
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

On Thu, Jun 13, 2024 at 10:14:32PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> In v6.10 kernel, some tracepoints events are added to record
> IEEE 1394 asynchronous communication. In the case that multiple 1394 OHCI
> controllers are available in Linux system, it is hard to distinguish
> the controller used for the communication, since these events have no
> member in their data structure to express the used controller. It is a
> bit inconvenient to diagnose things.
> 
> This series of patches is an attempt to solve the issue. In Linux
> FireWire core, the available controllers are maintained in list, and
> each of them has its own numeric identifier (=card_index). In this
> series, the index value is added to the data structure.
> 
> I would like to put the change to v6.10-rc4 (or later) as the part of
> fixes if receiving no objections.
> 
> Takashi Sakamoto (8):
>   firewire: core: record card index in tracepoinrts events derived from
>     async_outbound_complete_template
>   firewire: core: record card index in tracepoinrts events derived from
>     async_outbound_initiate_template
>   firewire: core: record card index in tracepoinrts events derived from
>     async_inbound_template
>   firewire: core: record card index in async_phy_outbound_initiate
>     tracepoints event
>   firewire: core: record card index in async_phy_outbound_complete
>     tracepoints event
>   firewire: core: record card index in async_phy_inbound tracepoints
>     event
>   firewire: core: record card index in tracepoinrts events derived from
>     bus_reset_arrange_template
>   firewire: core: record card index in bus_reset_handle tracepoints
>     event
> 
>  drivers/firewire/core-card.c        |   6 +-
>  drivers/firewire/core-cdev.c        |   6 +-
>  drivers/firewire/core-topology.c    |   2 +-
>  drivers/firewire/core-transaction.c |  30 ++++----
>  include/trace/events/firewire.h     | 113 +++++++++++++++++-----------
>  5 files changed, 92 insertions(+), 65 deletions(-)

Applied to for-linus branch.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
