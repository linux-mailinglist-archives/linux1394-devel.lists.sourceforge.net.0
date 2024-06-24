Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE219159ED
	for <lists+linux1394-devel@lfdr.de>; Tue, 25 Jun 2024 00:35:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1sLsHR-0002CM-9F;
	Mon, 24 Jun 2024 22:35:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1sLsHP-0002CD-QL
 for linux1394-devel@lists.sourceforge.net;
 Mon, 24 Jun 2024 22:35:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vLjiFJxOdYepXvTDQroB0EYKMbWZPsdolq8sznSWlMs=; b=YiNlyCMnSwGJEVEXaIlR05GJgo
 Qxe6gX7dk+/gaml9rurOZrjyc2SIKTvz2OJ+QxauEqcD066o/Lbbugxd+RFgifEZle9iLMV5vXKms
 EUufzMmoiOLpU8Sfsy9avu4ylToiWdoP27rlqndbWyC9K7ccRGTo4lpeHNxHmhKdEcbE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vLjiFJxOdYepXvTDQroB0EYKMbWZPsdolq8sznSWlMs=; b=NNiA31UT62lXkz5h2Atc8K/znu
 jBzU0s4wW6ho/4VsYibRcS8Q1clR0dAsASegQUMuLexe6BLgtPGx2HdxT2a/PVFeqTBxA7q9jCFUz
 JrWjq6ni/vl+yvPCpXsJKVj6LblsNH5rcZiKXVQ/gwLW7kVKv4ZvBnKNvWknKXPxeaXw=;
Received: from fhigh5-smtp.messagingengine.com ([103.168.172.156])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sLsHO-0001xp-Vg for linux1394-devel@lists.sourceforge.net;
 Mon, 24 Jun 2024 22:35:19 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id 905891140098;
 Mon, 24 Jun 2024 18:35:07 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Mon, 24 Jun 2024 18:35:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1719268507; x=
 1719354907; bh=vLjiFJxOdYepXvTDQroB0EYKMbWZPsdolq8sznSWlMs=; b=c
 nbjUSLi0y3fVTXvUsjB8bo884WeQyaoKdUCMDa0QdsMgxxOlJjKf0W6mRIN3Up8n
 uSFlBhajk6RcLbBE+/n7XHV0BhuDXrVit+DS5eMYXpPEumqr0stY7U9UkiRTbmMW
 aMCnQFMlgbFClCPqBHBsw3puHJyCALLZtZ9iw7Tj5dseva+ciLi2xu8/rtVZnRnT
 pNoFFCEEQ+WFG/YT8bW3J6EDFQDjZzRNlbBkjv4Ts/+8ha+dQYDxnkRQchJ5N1Md
 xKpSAlz93jqKMarHENcz3kC7eYkKok824/PgyyQL7HLJ6OzH8m8U+CkWsFZaXQ1A
 L8WBwFeGb3grKCqQXpHAw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1719268507; x=1719354907; bh=vLjiFJxOdYepXvTDQroB0EYKMbWZ
 Psdolq8sznSWlMs=; b=J7hn6uLSuIOVQ/XD+0lXN4rsCJbwtAsoysgcgZNW0M4J
 X+nLMb/By3zbWuG1joYuX7/kL2a38zYucSu4HPI6AIrUChPv2ohtKJt81XwjxZ7T
 iK8LmjcS4AuqlLFATdp0N6HUfvZVYVfU18kL7rAHOYohVMeSLieBjn2jVP1NihqE
 5O+kbQHqqadKSw7JfyKA8bY80b9AUSq4nMKOBOkT1pvp0VVu4KbOtl3ftBJJtn9s
 Nsdotrb96SwJXE7HzCJBy8h2TW+OvYvuGbzfqW5967lhNjWIGs+VF6e6kjIpugCQ
 JhmM6xyhdwt1AfokboiWEoc9t3y3Zb+yNAMAOXgQsg==
X-ME-Sender: <xms:m_R5Zv28NqJAFCZlmfjkjF-zf1JWEhe2tzCkHK7dxfW4LdJkrH_MlA>
 <xme:m_R5ZuHhSyb7RBAZCLpJJ1KPu906dtHqS-oY8pmXxqoxHZJvbbBgib9hU0KzJb8jP
 Rb_R8fvf-IeICfcirQ>
X-ME-Received: <xmr:m_R5Zv6qC8z1ZcCinHUIwkS1jBLd4K9MK5_nC-SEGMva9HyDXJQ7fN6EtZcn5aa1GMaauPbE9oQF0LoRAHvZI9dG5PqhWKpuqJE>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeegvddgudefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:m_R5Zk1uo4eK0ILrWeOyfAjtmbMFxRK8GeSawl-ACEByCraCaMDaQQ>
 <xmx:m_R5ZiHp7kZq8R9dJzUO4uo9I6f6TTb4HxfWBO6cfYzoUDIluliLBg>
 <xmx:m_R5Zl-Ff-KWkyrMjNy5hIEtHx9iFDhub3qI4YUwU95zemp-otYNVA>
 <xmx:m_R5Zvm0UMrnE5GpchvJUjLq4WyjrgPN0jvCIe8fpnIjpGP5yZiyYQ>
 <xmx:m_R5ZnSZJ3VMZ_nBF2TzWZa8bVCkI1eIczIkgCZVDCMCxPr0J5s0znxj>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 24 Jun 2024 18:35:06 -0400 (EDT)
Date: Tue, 25 Jun 2024 07:35:03 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/7] firewire: core: add tracepoints events for
 isochronous context
Message-ID: <20240624223503.GA914180@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240623220859.851685-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240623220859.851685-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 24, 2024 at 07:08:51AM +0900, Takashi Sakamoto
 wrote: > Hi, > > It is helpful to trace any operation for isochronous context
 for > debugging purposes. This series of changes is the last pa [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.156 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.156 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.156 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1sLsHO-0001xp-Vg
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

On Mon, Jun 24, 2024 at 07:08:51AM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> It is helpful to trace any operation for isochronous context for
> debugging purposes. This series of changes is the last part to add
> tracepoints events into core function.
> 
> Takashi Sakamoto (7):
>   firewire: core: add tracepoints events for allocation/deallocation of
>     isochronous context
>   firewire: core: add tracepoints events for setting channels of
>     multichannel context
>   firewire: core: add tracepoints events for starting/stopping of
>     isochronous context
>   firewire: core: add tracepoints events for flushing of isochronous
>     context
>   firewire: core: add tracepoints events for flushing completions of
>     isochronous context
>   firewire: core: add tracepoints events for queueing packets of
>     isochronous context
>   firewire: core: add tracepoints events for completions of packets in
>     isochronous context
> 
>  drivers/firewire/core-iso.c     |  32 +++
>  drivers/firewire/core-trace.c   |   4 +
>  drivers/firewire/ohci.c         |  25 +-
>  include/trace/events/firewire.h | 463 ++++++++++++++++++++++++++++++++
>  4 files changed, 518 insertions(+), 6 deletions(-)

Applied to for-next branch.

Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
