Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE00533107C
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Mar 2021 15:12:38 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lJGcY-000401-0d; Mon, 08 Mar 2021 14:12:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bigeasy@linutronix.de>) id 1lJGcW-0003zW-08
 for linux1394-devel@lists.sourceforge.net; Mon, 08 Mar 2021 14:12:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lyIKqK5wLrUyNMr8Vn9EWnwNm9njaJ3gmuSF0PKWyVU=; b=aT0RsINSbjHtou+uFSbCdsskue
 WWK0TccrymwR9UTSvoXGTfnpMG9Pzpd/VodEPuaqpb/H1JU4K+gAkFH7cnVuhAQRR27KjmmwCFKRQ
 dsEAnNR3TyYouN18mxvJME8b2Q5Qngaz4PxuSCtUDLkbF9E/Ff3dzBPqsmzVQxBl3U4Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lyIKqK5wLrUyNMr8Vn9EWnwNm9njaJ3gmuSF0PKWyVU=; b=i6CCD36t2R0cKao4YeL/ccN57L
 XCp2opjmY7bCwEw66f6cDHbGUOQVBedTeASkT1qvS7Em5hLZRUjTco2tprcAVO3P734rmFwGoPDJ3
 IMlKi1I/FKDXHYiDxdRydRUKxqpTu4C4JODUwC7fRxyDiEMpH2DyAA0OyWsbjIz1tt+4=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lJGcQ-001AW8-1y
 for linux1394-devel@lists.sourceforge.net; Mon, 08 Mar 2021 14:12:27 +0000
Date: Mon, 8 Mar 2021 15:12:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1615212731;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lyIKqK5wLrUyNMr8Vn9EWnwNm9njaJ3gmuSF0PKWyVU=;
 b=G3xKbTwEq0wO20f5IuTmCpj64xguSM6JDXIxfHgqoIC2p1kg88Er1YuvfiVs/mdCnoYlQN
 FA6AdM6rDRllKLB5oj4H08+g+bX/I8QGioa1bZ+Lvwfpe36uTqQkbAHXUIjh+4UVgfkHNr
 JIggFhZnShNjlhNhlsj7xxbfHWcI7nAxaHbHdRQ6zz4Lko7RL419ECeqAwazm5+8CtPbmx
 pA5ZxCacUmKxju0FvI8UIJw+Ce1TOP5dMGSWBIvyzdz2gKFhhrcpXIdLs9EfLxFm7qPuJb
 Yjk7hGbB/s4hoM2lQUJqYgX0zih0MyzzfZXjkKsDzT2mmeSDUDHtwruXkcH88Q==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1615212731;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lyIKqK5wLrUyNMr8Vn9EWnwNm9njaJ3gmuSF0PKWyVU=;
 b=PHoFHJfu5UvLduMZeeTLxgnG+5hyiMfP2pMEHh8gVvOCxYldybM6xcFBgnTSUgwM9NHFWg
 RUJIMeoQdjfcGtBA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: David Runge <dave@sleepmap.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <20210308141210.yoa37dsc26p4jsim@linutronix.de>
References: <YBVG/PG7syFIUBno@hmbx>
 <20210201083441.ocucdvdrv37goz2s@linutronix.de>
 <20210205112638.xuduvuefy3auycht@linutronix.de>
 <YB3TLNN39/XhUyUY@hmbx> <YB+5tdIpbTfnDnIi@hmbx>
 <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
 <YCl28sXo7LEyCK8y@hmbx>
 <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
 <20210218092751.ahn262llcpp2loz7@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218092751.ahn262llcpp2loz7@linutronix.de>
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
X-Headers-End: 1lJGcQ-001AW8-1y
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

On 2021-02-18 10:27:51 [+0100], To David Runge wrote:
> On 2021-02-18 09:38:49 [+0100], To David Runge wrote:
> > On 2021-02-14 20:16:02 [+0100], David Runge wrote:
> > > The current config can be found on the AUR [1].
> > 
> > So this did make a difference. 
> 
> made _no_ difference. Sorry for the confusion.

David, did you had a chance to test the patch?

Sebastian


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
