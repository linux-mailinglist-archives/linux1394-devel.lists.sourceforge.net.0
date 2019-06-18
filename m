Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E58C4962E
	for <lists+linux1394-devel@lfdr.de>; Tue, 18 Jun 2019 02:09:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1hd1g9-0003eN-4C; Tue, 18 Jun 2019 00:08:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jwoithe@just42.net>)
 id 1hd1g7-0003eD-NL; Tue, 18 Jun 2019 00:08:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=E4OCJGLjJDubfq+DbbjxnGwHrPXiv3aSqaZ+MCrRWFU=; b=hKb6ZDjriFDsmEMEALG6d6/1Cc
 7gNKRl9fsLjOr3txjyqhM1IJjE1vzN69qDc8f8KkCV8kY29Dv8X9uraDvnMdysWfMEH+QrTcmAkVr
 w8YCVKAsD8R8qO6gdrWauEm8zmBZT0wR96sZ9yeG5HXUxJwzmNua8Bz4cr9Y+RPAazXc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=E4OCJGLjJDubfq+DbbjxnGwHrPXiv3aSqaZ+MCrRWFU=; b=UMN3mh4k520u/z0+E4fg52g6Av
 Lc3a07y1BvLx/XyoySaH8Kj/1KDuAkPdpOjRJelwT1nmn1iO/SR/H5kcMvPKTpuaCIycPdX+yYhsw
 nKnL1viA64WOn4fpxRyOVfhBhffBphWFHRWEWuWUJGsY8HPbnKxahG6hs8ZbbmL3r7sA=;
Received: from server.atrad.com.au ([150.101.241.2])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hd1g1-0020Ey-GR; Tue, 18 Jun 2019 00:08:45 +0000
Received: from marvin.atrad.com.au (IDENT:1008@marvin.atrad.com.au
 [192.168.0.2])
 by server.atrad.com.au (8.15.2/8.14.9) with ESMTPS id x5I05was019712
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 18 Jun 2019 09:36:00 +0930
Date: Tue, 18 Jun 2019 09:35:58 +0930
From: Jonathan Woithe <jwoithe@just42.net>
To: systemd-devel@lists.freedesktop.org, alsa-devel@alsa-project.org,
 ffado-devel@lists.sourceforge.net,
 linux1394-devel@lists.sourceforge.net, clemens@ladisch.de
Subject: Re: [FFADO-devel] udev: Access permission of fw character device in
 which fw node includes unit handled by ALSA
Message-ID: <20190618000558.GB20102@marvin.atrad.com.au>
References: <20190520122724.GA14864@workstation>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520122724.GA14864@workstation>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-MIMEDefang-action: accept
X-Scanned-By: MIMEDefang 2.79 on 192.168.0.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-Headers-End: 1hd1g1-0020Ey-GR
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

On Mon, May 20, 2019 at 09:27:27PM +0900, Takashi Sakamoto wrote:
> I'm an ALSA developer, mainly committing to drivers for audio and
> music units on IEEE 1394 bus (yes, it's legacy FireWire). I have a
> concern about access permission for fw character device.
> :

This was CCed to the FFADO-devel list.  My linux boxes don't use systemd and
I have only a superficial picture of systemd, so I don't think I can offer
any suggestions.  Furthermore, FFADO ships a collection of udev rules which
seem to do the job for FFADO regardless of whether systemd is used or not. 
Consequently it appears that the above discussion is not directly relevant
to FFADO.

If there are connections I'm not aware of please fill me in and I'll respond
accordingly.

Regards
  jonathan


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
