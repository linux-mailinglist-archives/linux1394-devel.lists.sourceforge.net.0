Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F202031E800
	for <lists+linux1394-devel@lfdr.de>; Thu, 18 Feb 2021 10:28:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1lCfbd-0007GN-OM; Thu, 18 Feb 2021 09:28:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bigeasy@linutronix.de>) id 1lCfbb-0007Fl-Ep
 for linux1394-devel@lists.sourceforge.net; Thu, 18 Feb 2021 09:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rhFl2a9CMbOIoF03W9/6lOSpzk4xQRNGyZJOlYIF7mM=; b=ajoeH3hbR3GM+B7THsmbS+/B0Y
 iZ2mCgeYQSLfF7aMD+1HgtuCJUmPieIB2P68Rq/eaM3FgJcFSRt0kM/26Sr1yHc5yilyJov0zmdN+
 SMpuiioxMkQseYoRMk58rSfO2rpXExjzpqQR3p1tHJUkBqBoHfmhsn6QznC3ueBA+xSM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rhFl2a9CMbOIoF03W9/6lOSpzk4xQRNGyZJOlYIF7mM=; b=iSIwBBYgf7/nSKo28uceW2HHM7
 ImYKcZB1R2dj+c+cYn3Kp57+SxqA76ijNV0WlMykRTm06vsyuH95kSEdtKke4VGcTxl1Sx7a9X7JN
 jWso8Y60vygg0gYYxAEoWGQPNBz8x/y8al1haWwZBveF9HskEbVg6dV9Ynl4kKb9v2GE=;
Received: from [193.142.43.55] (helo=galois.linutronix.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lCfbV-00DhYF-JA
 for linux1394-devel@lists.sourceforge.net; Thu, 18 Feb 2021 09:28:15 +0000
Date: Thu, 18 Feb 2021 10:27:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1613640473;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rhFl2a9CMbOIoF03W9/6lOSpzk4xQRNGyZJOlYIF7mM=;
 b=KVlWyEEuDrM2W4OX7FSa3Jp+6yxvUb9xkAxzx/NGfz/kgVu2RrjaCR0F1nTE3ikq0fsyYc
 K1JzLTfJjRSb+Awi8JFOQ6S7REal6+BfKNuCzAySLLIYUbSNHRcpwcsyf/qVRJrKRNdcRe
 AtUeQGXNFOdWrpJUotwMnmSl+K9aXQNGQJEliWpLymmjMqLnI/GKvmCMkyZSF/XAPhWSOr
 nQTGnsJ8r7oNR8kHnzVqniQvgnif0+WdqQd5digvzQgOwzotIxJP41FfWgK5zgLtrzK3t3
 9IzIY6xtTTjVcw1IRK/ndImS41TiMg31auPnwNsDwm/B3SikMQzF4V+W7zQT+A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1613640473;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=rhFl2a9CMbOIoF03W9/6lOSpzk4xQRNGyZJOlYIF7mM=;
 b=09jaN4WdwOOONuZ+8wExMZv56AT81m0xQo0pwhMuq8b1UL8z9QQqkasZhUv6nJgE9PSTGi
 tH2r0qtcAFAgPICA==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: David Runge <dave@sleepmap.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <20210218092751.ahn262llcpp2loz7@linutronix.de>
References: <YBVG/PG7syFIUBno@hmbx>
 <20210201083441.ocucdvdrv37goz2s@linutronix.de>
 <20210205112638.xuduvuefy3auycht@linutronix.de>
 <YB3TLNN39/XhUyUY@hmbx> <YB+5tdIpbTfnDnIi@hmbx>
 <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
 <YCl28sXo7LEyCK8y@hmbx>
 <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1lCfbV-00DhYF-JA
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

On 2021-02-18 09:38:49 [+0100], To David Runge wrote:
> On 2021-02-14 20:16:02 [+0100], David Runge wrote:
> > The current config can be found on the AUR [1].
> 
> So this did make a difference. 

made _no_ difference. Sorry for the confusion.

Sebastian


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
