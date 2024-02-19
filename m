Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC77859A90
	for <lists+linux1394-devel@lfdr.de>; Mon, 19 Feb 2024 02:42:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rbsfr-000527-5i;
	Mon, 19 Feb 2024 01:42:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rbsfo-000521-5G
 for linux1394-devel@lists.sourceforge.net;
 Mon, 19 Feb 2024 01:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NYKxpkwmmrOms8GrBY8Y+rDnWrqxSOLBZMp5J1fjqQo=; b=HVLqW6+6qvqvpF6bbr6zhnGT+o
 /SOQV/MTgErPy5V5YHgnwimqMPqakJoISgL0eHJBKkSxeVcvou+gRygE91ZTwlSAF4ICcLO3rd+lT
 X2yEGfxAUR3ZXYxaTvBE7GqxyGi4MiTad0yzjDR28YztFoUZS1lrU349ylGQVgxYnJjc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NYKxpkwmmrOms8GrBY8Y+rDnWrqxSOLBZMp5J1fjqQo=; b=B4fIryqnlPk7snT0pqjwDqQ11p
 VLE7vSw4akmJMup9SLEC99napgz8FEcKW8vgQg8o7uM56b34fFkUKnyHMcj9x3Za1vX4x9Fpvko+o
 ykhrQKGds0MpZh70KnJ7xcUT2FORe9UiPRu/YS/Qu9o5sADrqgwUmnQ7QtT4Qubayql8=;
Received: from pb-smtp21.pobox.com ([173.228.157.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rbsfm-0004SB-W5 for linux1394-devel@lists.sourceforge.net;
 Mon, 19 Feb 2024 01:42:25 +0000
Received: from pb-smtp21.pobox.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id CCBBC19C3C;
 Sun, 18 Feb 2024 20:42:13 -0500 (EST) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:cc:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=sasl; bh=5HGrLaYzpy65QFOSrLBQpKx5/1INLJLprPlU7Wl
 YRNk=; b=ZslW1H4qokw5yhH7KIy3ikaX6ac/Q3UZo9emRmvqHBrP+0fn2BhmH0m
 AIQXbbjgnXN5oLvNk5/Ugh+7fiLopTD8iILz6kj/sTTfGSBtloMwn5GbwfOCEnCR
 G3nXaEvDxOUtmpQaj/9xYVB8wJJ25NjtwYlfcpi5Yu09I/MAG1/Y=
Received: from pb-smtp21.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp21.pobox.com (Postfix) with ESMTP id B908F19C3B;
 Sun, 18 Feb 2024 20:42:13 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp21.pobox.com (Postfix) with ESMTPSA id 8C23B19C3A;
 Sun, 18 Feb 2024 20:42:10 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 08358C0220;
 Sun, 18 Feb 2024 17:42:08 -0800 (PST)
Date: Sun, 18 Feb 2024 17:42:07 -0800
From: Adam Goldman <adamg@pobox.com>
To: Tasos Sahanidis <tasos@tasossah.com>
Subject: Re: Question regarding linux1394 and bug report
Message-ID: <ZdKx77WEaiXMB1Vr@iguana.24-8.net>
References: <67f8f49f-0e95-49d4-abf5-9cb4692d9dd3@tasossah.com>
 <20240105150222.GA11325@workstation.local>
 <ZahqJTeKy6W2IRix@iguana.24-8.net>
 <36ab63e4-91a2-415f-9dca-0bd748aa58da@tasossah.com>
 <Za9jagkjzL4uVFkC@iguana.24-8.net>
 <ZcsyUsWtzoLzfPwu@iguana.24-8.net>
 <20cede4b-8060-4f6f-8a9b-7cb986a3d1b4@tasossah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20cede4b-8060-4f6f-8a9b-7cb986a3d1b4@tasossah.com>
X-Pobox-Relay-ID: 1927943A-CEC8-11EE-B47D-A19503B9AAD1-07713566!pb-smtp21.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Tasos, On Tue, Feb 13, 2024 at 12:18:01PM +0200, Tasos
 Sahanidis wrote: > Thank you for still looking into this. Apologies the late
 response once > more. Things got a bit out of hand... Unfortunately, I haven't
 had much time for FireWire recently, so my response is also late. Thank you
 for the additional logs. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rbsfm-0004SB-W5
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
Cc: linux1394-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi Tasos,

On Tue, Feb 13, 2024 at 12:18:01PM +0200, Tasos Sahanidis wrote:
> Thank you for still looking into this. Apologies the late response once 
> more. Things got a bit out of hand...

Unfortunately, I haven't had much time for FireWire recently, so my 
response is also late. Thank you for the additional logs.

> I thought maybe it works if the system boots with the camera plugged in, 
> so I powered off the system, power cycled the camera, and booted 
> directly to 6.7. Except 6.7 crashed on boot without any logs. I did not 
> at the time have another machine with a serial port, so I was unable to 
> gather any logs, and I didn't have time to test out netconsole. A few 
> more reboots with the camera plugged in, and the system eventually 
> booted, but I got the following mess:
> 
> [   88.040334] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
> [message repeated every 5~10us]
> [   88.062147] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
> [   88.062155] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset
> [   88.062162] firewire_ohci 0000:01:03.0: IRQ 00020010 AR_req busReset
> [   88.062169] firewire_ohci 0000:01:03.0: IRQ 00020000 busReset

Are you setting debug=-1 when loading the module? I believe 
OHCI_PARAM_DEBUG_BUSRESETS has been broken for years. It will freeze the 
system or spam tons of busReset log entries if enabled during module 
load, even without a camera connected. debug=7 should be safe.

By the way, I will be submitting a patch relating to bus resets soon, 
but don't get excited. It won't help with the problem you're 
experiencing.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
