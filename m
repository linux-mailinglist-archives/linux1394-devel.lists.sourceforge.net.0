Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 774DE88851D
	for <lists+linux1394-devel@lfdr.de>; Mon, 25 Mar 2024 01:58:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1roYfg-00050j-Cn;
	Mon, 25 Mar 2024 00:58:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1roYfe-00050M-4e
 for linux1394-devel@lists.sourceforge.net;
 Mon, 25 Mar 2024 00:58:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AmBInRDbGLPNG8rOKA0r7VItOqJAoF9HJEoIM9V+4oY=; b=SzFz+Bhz2dBo6v+54soR0gSHrt
 /5U8zj9jW5LYxr61do49dP1K+tR24zB1hGC4wq25NM/rBfp9YGx/RDSfwgq1FjquTzxetv5pnz4+a
 vZ7ifAL0A/KuhEVwhDGFtg3bvZqbWPVSL9wOiX69vPe+XmtnHS0QP/cmjqVDCdH2iDcM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AmBInRDbGLPNG8rOKA0r7VItOqJAoF9HJEoIM9V+4oY=; b=EjEjL5CayQSRLSIR3A5C6nh07m
 +UcTU1iMAO4HCuOGN4/iEpQJwaXQST6QKoDPwNYflE3VmoFezE0+gwBvxBb80K8Xq3hl9r+bjn0mP
 q/dM/jTBhzmLRFDodp2yZJRLcPJ3ufk9W9pwf7AO9qBTLDqAkDH885RA3WU6pOn4Zsnc=;
Received: from fhigh8-smtp.messagingengine.com ([103.168.172.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1roYfd-0002IK-5S for linux1394-devel@lists.sourceforge.net;
 Mon, 25 Mar 2024 00:58:38 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailfhigh.nyi.internal (Postfix) with ESMTP id BE5F011400DB;
 Sun, 24 Mar 2024 20:58:31 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sun, 24 Mar 2024 20:58:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1711328311; x=
 1711414711; bh=AmBInRDbGLPNG8rOKA0r7VItOqJAoF9HJEoIM9V+4oY=; b=3
 ldJglBPvUkHNTQKMnOiWflAPoPG/D9xDNfEs886aNIXfQxoWkD0OXSiHd7pdAK13
 QqzvxUrG4LQelkCclliWVeLAlbpck5a9JT+/h6Q0H/VCWTzyeGeTyaZ2JkQU+gZi
 u5UdyAFwVnxa8S7Bgxvu0P+XdrQ9HntYZf8JE2u6nl0cHtXyYsyV90M29MS9GImR
 m8YEMFJUHdB9guHLYoJ6AEOIbNZkmz/6W1IaeDKTpkd1g/BDfWFlKMUQ8xXyHIDn
 MFZ5yoIGX7VIMPMZhC2TdpoaqpXzB9weeY0XOYb6QOy+UOyxBVtpbEwyGsOuXVlp
 w9kPX3osD8pdqELB6SLEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711328311; x=1711414711; bh=AmBInRDbGLPNG8rOKA0r7VItOqJA
 oF9HJEoIM9V+4oY=; b=gkETL7m4iU/ivMi8XrsIDZhhQpyXdKvfMMDiz6g0jl0w
 MOzOmfJVWTLGr7nNeWb9OgQoNOXMD8Y3vCfgyv89BhCnhSzDnO+qzwcGSCMsGHc7
 VMNjfAU1UdUZy4w1PrPvbjUx/c/xfsRSxI7J64MhtpnuZSYb8rxa+h0MgwwJR1bL
 2VKyqT35S7aHagt1LLzaumX1IXEsHTY2VX5NUsWipNP+IXMRK7YtTL2Bshv5vNYc
 NMdsy/iiCCp+QbelHB6rq5H2bg0oLg/I6QfNEFJal+NqTVgNPhike77qX5sNfdMJ
 Pu9CwSwU9AJONaXygX6l6xCSkLbZrOXaXSobgvnN5w==
X-ME-Sender: <xms:N8wAZkM7knHhaReC98k6cETmIEnUJ2zh6yuSarR27kUW2XFzSrn3nQ>
 <xme:N8wAZq-JO8BZbSlEcV0bkeCbhXDT0AXrBv6DF2EuMJi7MrS3x2HmGT6ZlicmA2vtC
 2uHywMxA0s4RvfZ2qU>
X-ME-Received: <xmr:N8wAZrQxwf3hiPM-VuuzS4bXH_SQkfkciSdO-reFN0dCcMX_vpXreNWS8S-lW_CrxqFUEoZMq9E67WN27bzQ5oNJE9aduzxtnuc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddtkedgvdelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggujgesthdtredttddtvdenucfhrhhomhepvfgrkhgr
 shhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhhihesshgrkhgrmhhotggthhhird
 hjpheqnecuggftrfgrthhtvghrnhepveeilefhudekffehkeffudduvedvfeduleelfeeg
 ieeljeehjeeuvdeghfetvedvnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlh
 hushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:N8wAZstNvcyvaJlCS9c8GrR0LMMi0eDqPwfANW0FnTMtdDw9ILp0GA>
 <xmx:N8wAZsdF5j3ezqqkHvFTNSglW3kIC29av6TCl2MNZ3UyVfxjcpRfXw>
 <xmx:N8wAZg0cF6Q_9d67qyrFgbnvX3ecW_h8xP2yTRsgZ9xH1onuLMybtg>
 <xmx:N8wAZg8xpDUZSFD9_zxOq0e8Ho-mXuhZLfnak3_6Rt73RqA6HGddNQ>
 <xmx:N8wAZr4yv6G2wY1t8M3kAzy7A4psO-0g7lbPisKJTLaByC43GW5KQA>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 24 Mar 2024 20:58:30 -0400 (EDT)
Date: Mon, 25 Mar 2024 09:58:28 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Adam Goldman <adamg@pobox.com>
Subject: Re: [PATCH] firewire: ohci: mask bus reset interrupts between ISR
 and bottom half
Message-ID: <20240325005828.GB21329@workstation.local>
Mail-Followup-To: Adam Goldman <adamg@pobox.com>,
 linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
References: <ZfqpJ061hLtPT8XL@iguana.24-8.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZfqpJ061hLtPT8XL@iguana.24-8.net>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, Mar 20, 2024 at 02:15:19AM -0700, Adam Goldman
 wrote: > In the FireWire OHCI interrupt handler, if a bus reset interrupt
 has > occurred, mask bus reset interrupts until bus_reset_work has serv [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.159 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1roYfd-0002IK-5S
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
Cc: linux1394-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Wed, Mar 20, 2024 at 02:15:19AM -0700, Adam Goldman wrote:
> In the FireWire OHCI interrupt handler, if a bus reset interrupt has 
> occurred, mask bus reset interrupts until bus_reset_work has serviced and 
> cleared the interrupt.
> 
> Normally, we always leave bus reset interrupts masked. We infer the bus 
> reset from the self-ID interrupt that happens shortly thereafter. A 
> scenario where we unmask bus reset interrupts was introduced in 2008 in 
> a007bb857e0b26f5d8b73c2ff90782d9c0972620: If 
> OHCI_PARAM_DEBUG_BUSRESETS (8) is set in the debug parameter bitmask, we 
> will unmask bus reset interrupts so we can log them.
> 
> irq_handler logs the bus reset interrupt. However, we can't clear the bus 
> reset event flag in irq_handler, because we won't service the event until 
> later. irq_handler exits with the event flag still set. If the 
> corresponding interrupt is still unmasked, the first bus reset will 
> usually freeze the system due to irq_handler being called again each 
> time it exits. This freeze can be reproduced by loading firewire_ohci 
> with "modprobe firewire_ohci debug=-1" (to enable all debugging output). 
> Apparently there are also some cases where bus_reset_work will get called 
> soon enough to clear the event, and operation will continue normally.
> 
> This freeze was first reported a few months after a007bb85 was committed, 
> but until now it was never fixed. The debug level could safely be set 
> to -1 through sysfs after the module was loaded, but this would be 
> ineffectual in logging bus reset interrupts since they were only 
> unmasked during initialization.
> 
> irq_handler will now leave the event flag set but mask bus reset 
> interrupts, so irq_handler won't be called again and there will be no 
> freeze. If OHCI_PARAM_DEBUG_BUSRESETS is enabled, bus_reset_work will 
> unmask the interrupt after servicing the event, so future interrupts 
> will be caught as desired.
> 
> As a side effect to this change, OHCI_PARAM_DEBUG_BUSRESETS can now be 
> enabled through sysfs in addition to during initial module loading. 
> However, when enabled through sysfs, logging of bus reset interrupts will 
> be effective only starting with the second bus reset, after 
> bus_reset_work has executed.
> 
> Signed-off-by: Adam Goldman <adamg@pobox.com>
> ---
> 
> --- linux-6.8-rc1.orig/drivers/firewire/ohci.c	2024-01-21 14:11:32.000000000 -0800
> +++ linux-6.8-rc1/drivers/firewire/ohci.c	2024-03-12 01:15:10.000000000 -0700
> @@ -2060,6 +2060,8 @@ static void bus_reset_work(struct work_s
>  
>  	ohci->generation = generation;
>  	reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);
> +	if (param_debug & OHCI_PARAM_DEBUG_BUSRESETS)
> +		reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_busReset);
>  
>  	if (ohci->quirks & QUIRK_RESET_PACKET)
>  		ohci->request_generation = generation;
> @@ -2125,12 +2127,14 @@ static irqreturn_t irq_handler(int irq,
>  		return IRQ_NONE;
>  
>  	/*
> -	 * busReset and postedWriteErr must not be cleared yet
> +	 * busReset and postedWriteErr events must not be cleared yet
>  	 * (OHCI 1.1 clauses 7.2.3.2 and 13.2.8.1)
>  	 */
>  	reg_write(ohci, OHCI1394_IntEventClear,
>  		  event & ~(OHCI1394_busReset | OHCI1394_postedWriteErr));
>  	log_irqs(ohci, event);
> +	if (event & OHCI1394_busReset)
> +		reg_write(ohci, OHCI1394_IntMaskClear, OHCI1394_busReset);
>  
>  	if (event & OHCI1394_selfIDComplete)
>  		queue_work(selfid_workqueue, &ohci->bus_reset_work);

Thanks for the patch. I pushed topic branch[1] for it, since I'm
considering about whether to send it to stable and longterm releases.

I had realized that the debug=8 for firewire-ohci module provides tons
of logs triggering by the irq handler, since the irq for bus reset is
not unmasked, so I rely on selfID events when debugging bus-reset. I have
few objections to the change.

My concern is how much invasive it is. The unmasking is kept until
bus_reset_work() is executed in the workqueue. When considering about
the delay of workqueue (since it is a kind of schedulable task), many
irq events for bus reset is potentially skipped from the logging. Of
course, it is the aim of change.

Let me take more time to evaluate the change, but I'm willing to send it
to upstream until -rc3 or -rc4, at least, if receiving no objections
from the others.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/ieee1394/linux1394.git/log/?h=v6.9-firewire-mask-bus-reset-event-during-handling


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
