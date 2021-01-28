Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 26504306DC4
	for <lists+linux1394-devel@lfdr.de>; Thu, 28 Jan 2021 07:45:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l513e-00068m-It; Thu, 28 Jan 2021 06:45:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <a.darwish@linutronix.de>) id 1l513d-00068e-14
 for linux1394-devel@lists.sourceforge.net; Thu, 28 Jan 2021 06:45:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kRYFXYdv4l0Hx3FPgUlOXL3Un9k2DykmlxA4Z/J78y0=; b=eS1Qev/lFjU12rojHaqmlvRpmp
 TWqxd05yDF9uUR0dSEfJhFK+UU+iVj6V//ZJMgwe/MGitY/BR7vUdtgNQ1BCSkB+wqC38oS50AR8f
 LAibBRvV2DZm9U89nVT2l8a6NanZnBur1tiLT7dU7iqNu2//tb7lbDlMLDdTQF8BYJWA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kRYFXYdv4l0Hx3FPgUlOXL3Un9k2DykmlxA4Z/J78y0=; b=I9xWsnxQUESVty8SrngDgqG/Q3
 72BG5oj0t8+wYtk+/RtuhY6nIaRzfGFywQEgsFYhst0/qtLS0PXtjWwG9H0yqLjOJrdgPB4jHQ2Cw
 +AIQ5MhU6QQg5rlxONusOlN6VWVyxNcaBqgwFAXM/SwBifBiEQ8lvP5kAOj7mVyTKgJA=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l513T-00DSwk-F0
 for linux1394-devel@lists.sourceforge.net; Thu, 28 Jan 2021 06:45:32 +0000
Date: Thu, 28 Jan 2021 07:28:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1611815316;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kRYFXYdv4l0Hx3FPgUlOXL3Un9k2DykmlxA4Z/J78y0=;
 b=sQS907uVzweDjUwqvChs3gwkqtQo3LsuNLCoB3Kp+KfIkvIE1LCwHrSUvur14iCQmTX9Uv
 IUle27UTn6CiCQVm4Vtud7lB522HcL8tC2c4mJ4TXZ9i4dvh3jgUFBdOnDNgFeV5i9FFBq
 H4+ip5ZW3DpEPOQHLPJJXjkwbYQnjZr1Rk4+5QnAjQyJuWJinIwe1n85ObE8o/L6NMyZvn
 Li96Ykai5ykIHWgCawj39kNDsGn6MXs1MpN/TimrdahbKB/S4JX0BSc1Q2sjy0g2L2xYtR
 eDik6xHIGHY0clW7EZxXbJDjQK4MfFs/EVirLp0DhVpH+UFskn7quu9H/3ALFg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1611815316;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=kRYFXYdv4l0Hx3FPgUlOXL3Un9k2DykmlxA4Z/J78y0=;
 b=9IDnRZwRXP6GT8ZP409ucTTwCkscVwGIm1C5XH7JxgJ8IaP1fC8W05CiSv4YEabhrsXw+F
 pVqnqrSyjie/jGBw==
From: "Ahmed S. Darwish" <a.darwish@linutronix.de>
To: David Runge <dave@sleepmap.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YBJZk9/77+E0TRk4@lx-t490>
References: <YAwPoaUZ1gTD5y+k@hmbx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YAwPoaUZ1gTD5y+k@hmbx>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1l513T-00DSwk-F0
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
Cc: linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sat, Jan 23, 2021 at 12:59:29PM +0100, David Runge wrote:
...
>
> Unfortunately firewire-ohci is unable to initialize my firewire
> controller [1] (a PCIe card [2]) both on 5.4.91-rt50 and on 5.10.8-rt24: No
> device nodes (i.e. /dev/fw0) are created and therefore no connected devices can
> be initialized either.
>
...
> At this point in time I'm uncertain whether this is a general problem
> with the kernel module on the realtime kernels or a problem with the
> kernel module on the realtime kernels with my PCIe controller specifically.
> That it works using the ExpressCard34 based controller on my laptop makes it
> extra odd (but I guess the underlying driver is handling this
> differently due to the PCI bridge?).
>

Can you please send the full kernel log, with boot parameter
"firewire_ohci.debug=-1", for mainline v5.4.91 vs. v5.4.91-rt50?

Please also make sure to use the exact same defconfig for both, except
with CONFIG_PREEMPT_RT=y for the -rt kenrel of course.

This will help in comparing apples to apples, as you were posting the
results of different base kernels (vs. the -rt versions), and different
defconfigs (vs. -rt) within such kernels.

Good luck,

P.S. Since this maybe is a timing issue, and ohci bus reset handling
occurs at SCHED_OTHER workqueu context, were you by any chance running
unreasonably-intensive realtime workloads by the time the driver was
loaded?

Thanks,

--
Ahmed S. Darwish


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
