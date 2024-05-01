Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B138B9218
	for <lists+linux1394-devel@lfdr.de>; Thu,  2 May 2024 01:14:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1s2J9b-0001p9-4o;
	Wed, 01 May 2024 23:14:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1s2J9a-0001ou-3H
 for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 23:14:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LGBpfsfi1Wa2XZqumOpfSa70+soAJ7ROMnIXyxLaxJM=; b=KXPbAYH5UnKCM/QF0L5o+QPQ7c
 H+TfHfGJHziPKK9Pus+dqgxnWMb0pQv2GjKAFnsX2QyFXcCPJZQ7QGg8PEdRN6Sppjdc/Ce3cPMJh
 pPdG4me9IAYCGdaDm8VW2wTUx1illv0MpaTZyDIuCN7pEN6QqH/ad7L2P1cJ8Pc9484Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LGBpfsfi1Wa2XZqumOpfSa70+soAJ7ROMnIXyxLaxJM=; b=JjxQ3w68TRY5ziy/2WggpqjymD
 XqD3PxIOvtqMroJpG7cws2ga+q1mWkVJGxvF+u/w9D+BALULCSK8P0BLwews5CCPVijovXFC6q2tp
 rx9veXB0vJEkcr2ivmFMQ+6XuCCtkegPB3JNksqSALLCTvHc+sVWJu0KyEtHvKJTdj3Y=;
Received: from wfhigh3-smtp.messagingengine.com ([64.147.123.154])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s2J9Y-0003SH-V0 for linux1394-devel@lists.sourceforge.net;
 Wed, 01 May 2024 23:14:22 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
 by mailfhigh.west.internal (Postfix) with ESMTP id C63D718001AE;
 Wed,  1 May 2024 19:14:14 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Wed, 01 May 2024 19:14:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm3; t=1714605254; x=
 1714691654; bh=LGBpfsfi1Wa2XZqumOpfSa70+soAJ7ROMnIXyxLaxJM=; b=L
 xhr1KIBXSIGKhTDSwFtwCxJrtrg8yLtZkfRbApMQk04ZvCjFemUooob0vRLimEV0
 aUrcUvqU5P8oAdxfkFPMwJpGZhdOEmMx/NRNRjKygZijwp1IuCAI6eQlIPHVQGiy
 /9HhjnrX7zOP/mHbbeQW4gSku6QeU0SuUi2+kbPuGykOsVts6YQeQ1q43cy3f8Mi
 zZIkthpQ1plC31UFghzp4DtpddeNIKgCg0EdwfpQccemf3OwIZsX8vPHlSjGWrtt
 JqU9ZV/Vw1BGiEFY51KudZAxECn7dAJW01TZPf5xkGOapuNag6AmdG4NIRNPucj/
 Lh84X4uj6mWdsASfH0J7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; t=1714605254; x=1714691654; bh=LGBpfsfi1Wa2XZqumOpfSa70+soA
 J7ROMnIXyxLaxJM=; b=SQmShT7USHei3dws+1rm3m1358/r2FIN/MpbL8TlQM1K
 0yEAnspPLQGPaBVuGiV9yETrJ21SvQBPCZrG8gAYQDtAArC10LmaDIhPgGs4VWSV
 d3SZxX8KVX+xMWcv+XasS59eJdwKAJ2SkIRzF+8JneWJskHjE0iBE5shEn5Ws36N
 kWqqrVgVSuysnBScPDFa/dMokZXx0DiqQ4edqBp8/kWvZsmlSnZg1TZDVSHKq4Gx
 Q4QdVIGkVxufsrag34rDjbZX1POWQyzPcw8De6It5hg1hTimXuDgb09hDJSKewn7
 cNK7pu0c6Z692I7uEbG1fYV4aBmBAuQpb57Ho6fbig==
X-ME-Sender: <xms:xswyZqtsg806iXZeFUmHer5HpTnVbqnDLtuFKFPCrkkhD_WB5WXItg>
 <xme:xswyZvcCMVTlEETK4SbEXyp8AaFlFT5610dFLx7fc7Cnscbk12eq8z3_MqPo7iYsZ
 ejkKbnSaRIh8qg2uoc>
X-ME-Received: <xmr:xswyZlyFnMZdPRaLTd0LJ1JVOxeU3gmJN5tz-lISapdkkDk4bv2ci0rGJnwkwtC7267PWy3mW6FyKqtvlZbvmLorvefp9lj5>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrvddujedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:xswyZlPcKC7QkqKMf-KT4Y0O9y1C5Z_aVIisCvtuLX60K8G611pHZw>
 <xmx:xswyZq8lILCgqTDBmRVpJ4cg3OQFM3t-wkx_tYvq15czWMkgSnGTIA>
 <xmx:xswyZtXhxd_NvAsUPWZGV-Zd9PEmzdJtsGvWM5T9iFTtGnPRhVeQCQ>
 <xmx:xswyZjcXIGk6yNSkgscSanAhaxb2BZkBd_UFpsEX3plTl1rMREDIfg>
 <xmx:xswyZsKZoov1_uTTV5OYBRRJUXI2Xwif-29k72jphASDbw7u8tIcmH6D>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 1 May 2024 19:14:13 -0400 (EDT)
Date: Thu, 2 May 2024 08:14:10 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/5] firewire: core/ohci: add tracepoints events for
 bus-reset
Message-ID: <20240501231410.GA106963@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20240501073238.72769-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240501073238.72769-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, May 01, 2024 at 04:32:33PM +0900,
 Takashi Sakamoto
 wrote: > Hi, > > IEEE 1394 bus is under bus-reset state when the physical
 state of bus is > changed; e.g. bus topology change by adding new n [...]
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
 for more information. [64.147.123.154 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1s2J9Y-0003SH-V0
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

On Wed, May 01, 2024 at 04:32:33PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> IEEE 1394 bus is under bus-reset state when the physical state of bus is
> changed; e.g. bus topology change by adding new nodes in the bus. It is
> important to handle the state appropriately for the maintenance of bus.
> 
> This series of change adds some tracepoints events to trace the events
> related to bus-reset. Some kernel log messages are obsoleted and
> deleted. It also includes for 1394 OHCI driver so that bus-reset IRQ
> event is recorded as much as possible, and obsoletes bus-resets bit
> from debug parameter successfully.
> 
> Takashi Sakamoto (5):
>   firewire: ohci: add bus-reset event for initial set of handled irq
>   firewire: ohci: obsolete OHCI_PARAM_DEBUG_BUSRESETS from debug module
>     parameter
>   firewire: core: add tracepoints events for initiating bus reset
>   Revert "firewire: core: option to log bus reset initiation"
>   firewire: core: add tracepoint event for handling bus reset
> 
>  drivers/firewire/core-card.c        | 13 +++---
>  drivers/firewire/core-topology.c    |  3 ++
>  drivers/firewire/core-transaction.c |  7 ----
>  drivers/firewire/core.h             |  4 --
>  drivers/firewire/ohci.c             | 18 +++------
>  include/trace/events/firewire.h     | 61 ++++++++++++++++++++++++++++-
>  6 files changed, 73 insertions(+), 33 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
