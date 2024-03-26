Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B42288C1E6
	for <lists+linux1394-devel@lfdr.de>; Tue, 26 Mar 2024 13:19:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rp5lZ-0005LU-Rr;
	Tue, 26 Mar 2024 12:18:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rp5lY-0005LO-Da
 for linux1394-devel@lists.sourceforge.net;
 Tue, 26 Mar 2024 12:18:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZKndFoDTnJn0xXQw708FXn3YQv04K5kIqT6IbG108v4=; b=b7Bsw+k4hGWk9YhV+WqxI8ePYw
 Us8pJWeaossdgBCMEaQoxRL0IXwrHsoIi1LBM9H5ogwwTGaadki7BIwlePuJl+HqJeXDxFJIKHAA+
 Iqih/NsDqjleu/Z3iil7bZPcQYn6jcvlfblJkbLiwRKuXN1DBpMJRbXX7oAf1xpNgqYo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZKndFoDTnJn0xXQw708FXn3YQv04K5kIqT6IbG108v4=; b=VSkCWVbgcKRVywh+XhRwjFZL3/
 zoi1T9LEliYR5FM+N7O5gMrKLwLBleReM6YJiQUgmi6ZJkvtVTy8S0ka3kQk4hJOQKcI8dY7gSy7h
 HUGYAEi53DMaM2rJcxk5MIwmdiwDwkvLdTzaakzI9Hv2s/mgIFe38dtn8PlnpvGcFFto=;
Received: from pb-smtp21.pobox.com ([173.228.157.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rp5lX-0002OY-FS for linux1394-devel@lists.sourceforge.net;
 Tue, 26 Mar 2024 12:18:56 +0000
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id 880F02C922;
 Tue, 26 Mar 2024 08:18:49 -0400 (EDT) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:cc:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=sasl; bh=9rVUUhguyKYMjkeTWxNxhL0yTS4z2tHrtGbc79u
 6mko=; b=NXOHwlrMWUP7qjUopdi3LnPUUiyMrHbjOrHxw9nV7K+9jYBWy8YFJp6
 32GlGuJiiDLm0er1k20roY0S0N9i9QoI7DTK2IWm34F+IiEYbDTdOB9sKvQ027aL
 CuMLraUvew8rGNaRmLtGKlbbWCEt6lw0qsbqWOJf0OMNgWHnEu3g=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id 72CA82C921;
 Tue, 26 Mar 2024 08:18:49 -0400 (EDT) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 1503D2C91F;
 Tue, 26 Mar 2024 08:18:46 -0400 (EDT) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 89215C01CE;
 Tue, 26 Mar 2024 05:18:44 -0700 (PDT)
Date: Tue, 26 Mar 2024 05:18:32 -0700
From: Adam Goldman <adamg@pobox.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>
Subject: Re: [PATCH] firewire: core: option to log bus reset initiation
Message-ID: <ZgK9GNLURNg63zRU@iguana.24-8.net>
References: <Zfqo43xhFluOgO01@iguana.24-8.net>
 <20240325004134.GA21329@workstation.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240325004134.GA21329@workstation.local>
X-Pobox-Relay-ID: FE53D1C2-EB6A-11EE-82F6-A19503B9AAD1-07713566!pb-smtp21.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Takashi, On Mon, Mar 25, 2024 at 09:41:34AM +0900, Takashi
 Sakamoto wrote: > Now we have two debug parameters per module for the
 slightly-similar
 > purpose. In my opinion, it is a pretty cumbersome to enable t [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rp5lX-0002OY-FS
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

Hi Takashi,

On Mon, Mar 25, 2024 at 09:41:34AM +0900, Takashi Sakamoto wrote:
> Now we have two debug parameters per module for the slightly-similar
> purpose. In my opinion, it is a pretty cumbersome to enable them when
> checking bus-reset behaviour. I think it is time to investigate the other
> way.
> 
> Linux Kernel Tracepoints[2] is one of options. Roughly describing, the
> tracepoints mechanism allows users to deliver structured data from kernel
> space to user space via ring-buffer when enabling it by either sysfs or
> kernel command-line parameters. Linux kernel also has a command-line
> parameter to redirect the human-readable formatted data to kernel log[3].
> I think it is suitable in the case.
> 
> It requires many work to replace the existent debug parameter of
> firewire-ohci, while it is a good start to work just for bus-reset debug.
> The data structure layout should be pre-defined in each subsystem, thus we
> need to decide it. In my opinion, it would be like:
> 
> ```
> struct bus_reset_event {
>     enum reason {
>         Initiate,
> 	Schedule,
> 	Postpone,
> 	Detect,
>     },
>     // We can put any other data if prefering.
> }
> ```

Maybe these should be four separate trace events?

> Would I ask your opinion about my idea?

It seems that tracepoints are the modern way to make debugging logs, so 
if we want to modernize the FireWire driver, we should replace the 
existent logging with tracepoints.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
