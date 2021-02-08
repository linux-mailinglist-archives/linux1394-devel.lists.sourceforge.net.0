Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFF5312D1F
	for <lists+linux1394-devel@lfdr.de>; Mon,  8 Feb 2021 10:20:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1l92iE-00077o-DO; Mon, 08 Feb 2021 09:20:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bigeasy@linutronix.de>) id 1l92iD-00077h-7f
 for linux1394-devel@lists.sourceforge.net; Mon, 08 Feb 2021 09:20:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NveZGsowCI0hguI8ut59jsvV7SwzJitBaNvEeFq1kF0=; b=ZbdMJ7BJFjXs2RwJZHTZ/UqSj3
 g9lQCpP8k102v1fEjawyTHXfI6GADgUaKza+2LVrUZPtOjmUdH450QC6WZewnvA6XnMrKdFs+jog9
 N0AQjRTCxOldkMpIdKi/qvbwhL1OEQbExoW3Ypj7p7+xTrYxgQ9nis/43HkJheMvLUTk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NveZGsowCI0hguI8ut59jsvV7SwzJitBaNvEeFq1kF0=; b=Adsg+HTpa5aauiM6gakNYfAjAA
 x3dEdcELJn2k0y14qjenHc5kF1RMSJfvu6ZntUc5Pqs3Z7JBBvil+8jbn2PDvNL1texunVzYvQwo6
 i4wJiDn51717TNncUCqnKyBu++W5DKVcWzr1fhsQ/8ULkBR8hoTZKNs8hCnX9PhV2QnE=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1l92i1-0004HZ-0i
 for linux1394-devel@lists.sourceforge.net; Mon, 08 Feb 2021 09:20:04 +0000
Date: Mon, 8 Feb 2021 10:19:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1612775982;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NveZGsowCI0hguI8ut59jsvV7SwzJitBaNvEeFq1kF0=;
 b=IEEQ4CUya/G2fKJBQDEFfBtjn8D2f/VvpW2YfNipkwH5pJlk21ZD3wBmyqgZqzttAnKcAP
 pd3E4ZQlxbcpL2gIEWMhm9pSjLHfoBs11av3aIgzqAfrreyeg7ZgCVVL74AWEvMgRwzk3o
 j4aFN7NQelsbrKtJvRtmFn7Dm7FCU7ZgQRG8aX5xtVFTlHoPaZSIUKQ8BM0+LDiuyq40Al
 ZmE+3AYwUnlqnuhuhbBgarn8c0yzsWfgKv7oIZ1JP9AgLzHPEjPTAS/tHUUkZ5g4ax3P+/
 +IALQQfphvvWZb1bZBZ4cqs8TWfvS7zetw5adxkO30yVG5q8yQm/8V1LvWTbZA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1612775982;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NveZGsowCI0hguI8ut59jsvV7SwzJitBaNvEeFq1kF0=;
 b=ydKrquny/glDJIuetZvqSDsH8UbvQ3zsxIejB8WHIu14mV5MENW+rbjlvN8cpHrUjczFcZ
 a/EA1vxve0LFQFAQ==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: David Runge <dave@sleepmap.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
References: <YBVG/PG7syFIUBno@hmbx>
 <20210201083441.ocucdvdrv37goz2s@linutronix.de>
 <20210205112638.xuduvuefy3auycht@linutronix.de>
 <YB3TLNN39/XhUyUY@hmbx> <YB+5tdIpbTfnDnIi@hmbx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YB+5tdIpbTfnDnIi@hmbx>
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
X-Headers-End: 1l92i1-0004HZ-0i
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

On 2021-02-07 10:58:13 [+0100], David Runge wrote:
> With 5.10.12-rt26 the controller still does not initialize at all
> though (/dev/fw0 does not appear):
> https://pkgbuild.com/~dvzrv/bugs/2021/01/linux-5.10.12-rt26-kernel.log

So it is either config or chipset specific. Did you posted a link to
your .config?

> Best,
> David
> 

Sebastian


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
