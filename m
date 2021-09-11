Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D7F4075F6
	for <lists+linux1394-devel@lfdr.de>; Sat, 11 Sep 2021 11:47:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mOzbQ-0004P0-Ci; Sat, 11 Sep 2021 09:47:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1mOzbO-0004Oq-UU
 for linux1394-devel@lists.sourceforge.net; Sat, 11 Sep 2021 09:47:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ALRQvkuUO/Bbr8HWamoT1D0i6BssoUh0UPD6C16R7RM=; b=cMfJg5tmgj9ybf7hvH1BXgD7EM
 1+UfCMJ1exQowEjguRXdaNdio7e6NDogp4zCbO8qPrt+8kIrXuTiotF5jy42IZYyBn7b9J/E0rKVE
 iN655sklILC78eh6oIPsTRx9Gnn+9K/BXBB6r0RlvQKJB/AOnX+fGrwngD3YUKpCD3yM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ALRQvkuUO/Bbr8HWamoT1D0i6BssoUh0UPD6C16R7RM=; b=SuIJ7x2WbjAg/xAsEnRuoRiEAA
 uIPYZZehmzOM0nE0VzxpzKljswAQsptTIUQPCpNBAciv04b+Nt2wuaXhc/29DdG1fhz8UN824s47x
 xdN034T7XwGOTE9iCR4x+mkawBCeD3s+Nq0/u27lL1rQGomwvAzaIJVz1xO1w65dhXGY=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mOzbK-0001Uw-R1
 for linux1394-devel@lists.sourceforge.net; Sat, 11 Sep 2021 09:47:14 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 049263200939;
 Sat, 11 Sep 2021 05:47:02 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Sat, 11 Sep 2021 05:47:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=ALRQvkuUO/Bbr8HWamoT1D0i6Bs
 soUh0UPD6C16R7RM=; b=Mx9m4iQiNLSmqFz0u1UDVRzsfxbaGbBEDdpiZF3NUXe
 POMSjja8X6PTmEmf+AE+k4bVs24MuAjQjGmtzbwXMMiYOpGMXTQD5v0VolYnwh7O
 caxvoebN08k6WnmiIfMlezMd89kMImellkHvnQ2ruW1W9iDoq3QYU5IqOQPzIMIo
 ecpyOE02/LE14/OaMZDlfqy6wxYR3o5sLHatZN0E12Qaz+hVzGWPk5Tw0ouG8BxH
 qK61ywFL8OPOt06ha7Aj7TeZDZ5+G08Blp4p7ABhmaKc3j4YPs4OmwYNc1iZRImx
 x3GABp9MsPIsSCcrYN45g/BNsU5u94vN2SgFMxRZBQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=ALRQvk
 uUO/Bbr8HWamoT1D0i6BssoUh0UPD6C16R7RM=; b=riCnbQ7oe/OK3Oht+ZDSiM
 j/5IxZ3UBJcWMV31stWLDVe0PC9RWrWDkZ0l8cc9tcPq/wcOzblX3tkHMrgk/AT9
 50LrlOnMmNDHQD65ed5rXmF20npInkoRO0Sz+j1y+vXK+mp5VHHVFUHmL+duwPEF
 EBSVjqyEwVpwK6yOp89REVy8zVhjcjo27sgCpKiIFyO8vggvRJN4F5qiItAh7TgQ
 1nkn33CG9tQD1Y+LaGZyeZzQ717l/RQcOCTRUAYXChKVfUPZuxIhYobe2b/fHpLA
 5utguwJV5UCjr8rTco5A1aucbGZWQPEVMxMKgPrgvehjvIJ/BcJyjBH7mEwfTWiA
 ==
X-ME-Sender: <xms:Fns8YdV4R001-9xlmdw5YSY0YbC8ITK9MFdknN10EgIUYrSDn_oK-A>
 <xme:Fns8YdnsT4ArZpPaZhVo4DCh4-6Bf7StEolTzZReiqG4kLaiuTtsuip3p6BhTfnL-
 6jRF2ZhiQW1rXOcnjA>
X-ME-Received: <xmr:Fns8YZYmP-7YDl7MFiSvBEAeCdeOZj3K4YRSyNzGWnyH5UuPLIZ2uxGg18AtxafUiivfqM4Y2at1WMKz8SpUlu6P_6Ii7ahxUg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudegfedgvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeejgeeifeeuveeufeeigeegjeelvdfgjeegffejgfdv
 keelhefgtdefteejleekjeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluh
 hsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:Fns8YQWeuRjKueuauLxHqBHFKHxqJ7vX63uNRTJFsoUfnaxusTl0bw>
 <xmx:Fns8YXmK4IlCkLCiekau_SXeeAnATebvvoRV6eyhJT-Yd0owW0E_yA>
 <xmx:Fns8YddHdoeEIwGQcOPwv8r2_nz3LO0AiNFX8rU8C_svHpXtnb0eQA>
 <xmx:Fns8YVgxmb3outCvn8Yt3aghEwb9tleaL3Dcr-r0MEkN6DvILWE3Rg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 11 Sep 2021 05:47:00 -0400 (EDT)
Date: Sat, 11 Sep 2021 18:46:57 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YTx7EVV5vFuhKM5i@workstation>
Mail-Followup-To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 David Runge <dave@sleepmap.de>,
 linux1394-devel@lists.sourceforge.net,
 linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
References: <YB+5tdIpbTfnDnIi@hmbx>
 <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
 <YCl28sXo7LEyCK8y@hmbx>
 <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
 <20210218092751.ahn262llcpp2loz7@linutronix.de>
 <20210308141210.yoa37dsc26p4jsim@linutronix.de>
 <YEkMvjJt/Vu9Jbgu@hmbx> <YTfy7pLhWkTOn+aI@hmbx>
 <YTgdLkTs7wEmj8fh@workstation>
 <20210910115541.jjf3fovv4v3etvde@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210910115541.jjf3fovv4v3etvde@linutronix.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Fri, Sep 10, 2021 at 01:55:41PM +0200,
 Sebastian Andrzej
 Siewior wrote: > On 2021-09-08 11:17:18 [+0900], Takashi Sakamoto wrote:
 > > Hi, > Hi, > > > According to the log, the task of 'pipewire-med [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.123.21 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: messagingengine.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1mOzbK-0001Uw-R1
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
Cc: linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Fri, Sep 10, 2021 at 01:55:41PM +0200, Sebastian Andrzej Siewior wrote:
> On 2021-09-08 11:17:18 [+0900], Takashi Sakamoto wrote:
> > Hi,
> Hi,
> 
> > According to the log, the task of 'pipewire-media-:2554' is blocked during
> > 122 seconds by call of 'wait_for_completion()' in code of
> > 'fw_run_transaction()'. This is odd in two points of transaction service
> > programmed in Linux FireWire subsystem:
> > 
> > 1. The process context should be awakened by softIRQ context, which should
> >    be scheduled by hwIRQ context for hardware interrupt of OHCI 1394
> >    controller.
> > 2. Even if the softIRQ context is not invoked, the process context
> >    should be awakened by wheel timer context, which is scheduled to finish
> >    the transaction several jiffies later (originally prepared for the case
> >    of split-transaction). In the case, the result of transaction is
> >    'RCODE_CANCELLED'.
> 
> 
> Side note: David is using PREEMPT_RT and his problem can be reduced to
> plain vanilla with `threadirqs' boot option. Back in February I sent him
> a patch [0] which inlines the tasklet job as I assumed it is not good
> reset the IRQ-event in the tasklet/workqueue. It seemed to improve the
> situtation as it recognized the device attached to the bus but ended
> then in the same timeout behaviour as now.
> 
> [0] https://https://lkml.kernel.org/r/.kernel.org/all/20210218083849.iitcrhdgv2oajfhv@linutronix.de/

Thanks for the side note, and I apologize to follow the thread partially,
not entire.

Furthermore, I'd like to correct my misunderstanding about the 2nd point
since the timer wheel context is scheduled only when the peer of
transaction transfer ack_pending for the request subaction. Without the
hwIRQ context, the task is blocked ever anyway.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
