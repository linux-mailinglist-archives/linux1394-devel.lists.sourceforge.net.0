Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F5915701A
	for <lists+linux1394-devel@lfdr.de>; Mon, 10 Feb 2020 08:52:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1j13rL-0008CC-P6; Mon, 10 Feb 2020 07:51:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <SRS0=UDa4=36=ladisch.de=clemens@webclient5.webclient5.de>)
 id 1j13rK-0008C4-Qo
 for linux1394-devel@lists.sourceforge.net; Mon, 10 Feb 2020 07:51:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F8eLTeyr8YSDG4MWgt2nH4vKE6rZCSGEgTKxfnGh1g8=; b=LDOqYuCQJT3fJOSPAV8eaKzUab
 91t4afDDt/TeW6LF+JR1OAJouEK3ajwA8/NSBFYrTj8Oxvn1JtKErVz7iH2v+TA/XTqdh1+Cgmy57
 Pd86j19nLW2MvKj2WS/f4nIAyiEA1Pu+Gh7AeAMDc3wPbLGSm9nB4sfJOxwy+I5iUc9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F8eLTeyr8YSDG4MWgt2nH4vKE6rZCSGEgTKxfnGh1g8=; b=XDfOZbFvu0NonZQ5lXEI985gna
 OQsnW6cS6QDv9qTZNWZE8i5zrgBQfF7hqUZDNrXX0g8qKc2jzrEtVrvCnZEIk5J+IdAaQuCvqXSPz
 de3yslWSUGvWB9g5jiaeJLCr9z0aUjEI5xK+LHs0T/UNhDtjKpiub5/6G9OebGOlQtXM=;
Received: from webclient5.webclient5.de ([136.243.32.184])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j13rH-00GxzR-48
 for linux1394-devel@lists.sourceforge.net; Mon, 10 Feb 2020 07:51:58 +0000
Received: from [10.1.2.4] (unknown [94.101.37.79])
 by webclient5.webclient5.de (Postfix) with ESMTPSA id 08110578744F
 for <linux1394-devel@lists.sourceforge.net>;
 Mon, 10 Feb 2020 08:32:15 +0100 (CET)
Subject: Re: VIA VT6307 problems
To: linux1394-devel@lists.sourceforge.net
References: <CADLDEKvqqr4bgAvAE3SC-qvYc2MSwuALKZvAyR4b8XHvQxDSjA@mail.gmail.com>
From: Clemens Ladisch <clemens@ladisch.de>
Message-ID: <9374be19-91a1-8423-c402-c168c650f0e8@ladisch.de>
Date: Mon, 10 Feb 2020 08:32:15 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <CADLDEKvqqr4bgAvAE3SC-qvYc2MSwuALKZvAyR4b8XHvQxDSjA@mail.gmail.com>
Content-Language: en-US
X-Virus-Scanned: clamav-milter 0.101.4 at webclient5
X-Virus-Status: Clean
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [136.243.32.184 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j13rH-00GxzR-48
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

Juerg Haefliger wrote:
> I've just purchased a firewire card based on the VIA VT6307L chip and
> as soon as I plug in and turn on a DV camera I get repeated kernel
> messages
>
> Feb  8 10:11:17  kernel: [  199.341690] firewire_core 0000:01:00.0: phy config: new root=ffc1, gap_count=5
> Feb  8 10:11:18  kernel: [  199.343353] firewire_core 0000:01:00.0: phy config: new root=ffc1, gap_count=5
> Feb  8 10:11:18  kernel: [  199.346380] firewire_core 0000:01:00.0: phy config: new root=ffc1, gap_count=5
> Feb  8 10:11:18  kernel: [  199.435397] irq_handler: 28 callbacks suppressed
> Feb  8 10:11:18  kernel: [  199.435402] firewire_ohci 0000:01:00.0: isochronous cycle too long
> Feb  8 10:11:18  kernel: [  199.866219] firewire_core 0000:01:00.0: giving up on node ffc0: reading config rom failed: bus reset
> Feb  8 10:11:18  kernel: [  199.930241] firewire_core 0000:01:00.0: rediscovered device fw0
> Feb  8 10:11:18  kernel: [  199.930250] firewire_core 0000:01:00.0: giving up on node ffc0: reading config rom failed: bus reset
> Feb  8 10:11:18  kernel: [  199.930252] firewire_core 0000:01:00.0: giving up on node ffc1: reading config rom failed: bus reset
> Feb  8 10:11:18  kernel: [  199.930254] firewire_core 0000:01:00.0: phy config: new root=ffc1, gap_count=5

Looks like a problem with the cable or a connector.  Can you check with a different
cable or device?


Regards,
Clemens


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
