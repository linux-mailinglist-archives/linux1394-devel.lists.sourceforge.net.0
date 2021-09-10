Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7D1406B42
	for <lists+linux1394-devel@lfdr.de>; Fri, 10 Sep 2021 14:15:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mOfQu-0004wz-GI; Fri, 10 Sep 2021 12:15:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <bigeasy@linutronix.de>) id 1mOfQs-0004wn-NI
 for linux1394-devel@lists.sourceforge.net; Fri, 10 Sep 2021 12:15:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lwd+DOAdiJN95wYFWWA7tKQ1/DoKlDnps57FX4LuBuo=; b=IbdY4IKLqKty2anhTmxFPx8x8/
 B3O6Pv/F5q0x8zasu0Vr1S6pZjbmtjJZKA3wECJy8OVgaUr1eZ5A5Klh2BkZeKiaflLERJCFlCHUk
 NPn4J67vbz993CZmyc73Tp02XdX52WxQIZBU54urwuHJu39f8OYTk7AmOUdKpOrBvUJ8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lwd+DOAdiJN95wYFWWA7tKQ1/DoKlDnps57FX4LuBuo=; b=TO5ffg20zIJwQAgHJF9QPHtOpj
 6r1YcUPED0m0glOeVP6FUmSQkXKYoQplRivCAhoHFe0RK0sbKuIwZmU9ptDj7ptUkdcVOVrWjbm7+
 +BRBddpN3++MEvFifkEpSGoV34QoVYzDLoP4YWvsHEeAWMmV8M6WgH4ahli0xjNQ3Nbw=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mOfQr-0002bQ-QC
 for linux1394-devel@lists.sourceforge.net; Fri, 10 Sep 2021 12:15:02 +0000
Date: Fri, 10 Sep 2021 13:55:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1631274942;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lwd+DOAdiJN95wYFWWA7tKQ1/DoKlDnps57FX4LuBuo=;
 b=cDuYZVTcrePLwRM8gH4aatMHEoD34ixvoJxD7Tg4n3L0PyLsqNskmjKUi63Gub4w+rbglM
 lsjO0nPuYUopHOL1/R8b0SaQewKiei0qNwXDP4QLloNdwWWsU74LvCbW7QoqPRBSGsHbvY
 scNYSytoog3oLF564TTHQHCuDxi0mPZ+1U692L4ZLWJQ32fyym7BNZmucWw+AFoGfWwkT9
 qLWu8f5Mj082S+z/okIx8KOnNFTE6+G654U3rUJ3JEmjI60KmT+FfCuWV+QEBlduRpCcEr
 snnFFp+V9VpAKupb2azVNFQOPXs78huMVCxlBqdkR3Yt+OPopi2/WTZRv9imOQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1631274942;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lwd+DOAdiJN95wYFWWA7tKQ1/DoKlDnps57FX4LuBuo=;
 b=wTC922689fmqE3/HsQL4F+7jQSuZpCrAVA8CwVCmYPpxvl3j/F7Vw+eQnhQ4O2a8j22DtN
 u03OEbtZYRSt7lDQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: David Runge <dave@sleepmap.de>, Kristian Hoegsberg <krh@bitplanet.net>,
 linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <20210910115541.jjf3fovv4v3etvde@linutronix.de>
References: <YB3TLNN39/XhUyUY@hmbx> <YB+5tdIpbTfnDnIi@hmbx>
 <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
 <YCl28sXo7LEyCK8y@hmbx>
 <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
 <20210218092751.ahn262llcpp2loz7@linutronix.de>
 <20210308141210.yoa37dsc26p4jsim@linutronix.de>
 <YEkMvjJt/Vu9Jbgu@hmbx> <YTfy7pLhWkTOn+aI@hmbx>
 <YTgdLkTs7wEmj8fh@workstation>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YTgdLkTs7wEmj8fh@workstation>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2021-09-08 11:17:18 [+0900], Takashi Sakamoto wrote: >
 Hi, Hi, > According to the log, the task of 'pipewire-media-:2554' is blocked
 during > 122 seconds by call of 'wait_for_completion()' in code of >
 'fw_run_transaction()'.
 This is odd in two points of transact [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linutronix.de]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [193.142.43.55 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mOfQr-0002bQ-QC
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On 2021-09-08 11:17:18 [+0900], Takashi Sakamoto wrote:
> Hi,
Hi,

> According to the log, the task of 'pipewire-media-:2554' is blocked during
> 122 seconds by call of 'wait_for_completion()' in code of
> 'fw_run_transaction()'. This is odd in two points of transaction service
> programmed in Linux FireWire subsystem:
> 
> 1. The process context should be awakened by softIRQ context, which should
>    be scheduled by hwIRQ context for hardware interrupt of OHCI 1394
>    controller.
> 2. Even if the softIRQ context is not invoked, the process context
>    should be awakened by wheel timer context, which is scheduled to finish
>    the transaction several jiffies later (originally prepared for the case
>    of split-transaction). In the case, the result of transaction is
>    'RCODE_CANCELLED'.


Side note: David is using PREEMPT_RT and his problem can be reduced to
plain vanilla with `threadirqs' boot option. Back in February I sent him
a patch [0] which inlines the tasklet job as I assumed it is not good
reset the IRQ-event in the tasklet/workqueue. It seemed to improve the
situtation as it recognized the device attached to the bus but ended
then in the same timeout behaviour as now.

[0] https://https://lkml.kernel.org/r/.kernel.org/all/20210218083849.iitcrhdgv2oajfhv@linutronix.de/

> Thanks
> 
> Takashi Sakamoto

Sebastian


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
