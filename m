Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DD08C19125C
	for <lists+linux1394-devel@lfdr.de>; Tue, 24 Mar 2020 15:03:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1jGk9F-0000we-FT; Tue, 24 Mar 2020 14:03:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mchehab+huawei@kernel.org>) id 1jGk9E-0000wP-Fv
 for linux1394-devel@lists.sourceforge.net; Tue, 24 Mar 2020 14:03:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=watgWjglpLJGUqB66AeJqyS7uxEYLo4XbMQo9CPXfVU=; b=Xbf64jz35vdmB/4uuVPLv8+nAO
 1MrmUjaKfeVzzxaQxfvNz6IM93zMPAGzniHWCfG9NmpcUQwjJ6kicggRfKx/cYWMnfgM/du18EMVZ
 FPV+Yo1OQUAdA4C/ItuKAdBQ5HQU+VWP+wbE4JW6O/yBdTYFs/R6GgC88onp13Q2EaHY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=watgWjglpLJGUqB66AeJqyS7uxEYLo4XbMQo9CPXfVU=; b=ScFM2brVze6WGDhoCEKfuRl7IO
 AT9WxjV6xDbzojq7z6xaGhQz1pDwyaEuq+vBFwF70yNKuKvZ3UTPJJYDiaWY0icUuTXoiwU3NldtO
 fGdCJsJqcXw5AeGlvx8dU3rmrttJMlewwWXLI49jAnCfMQQGmkZWNtsok1ck0YL1nLbw=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jGk97-00FF3t-Md
 for linux1394-devel@lists.sourceforge.net; Tue, 24 Mar 2020 14:03:16 +0000
Received: from coco.lan (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B25FF205ED;
 Tue, 24 Mar 2020 14:03:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585058584;
 bh=nZheRtnEx8p5KPd5Sx+dBSzlY74POjtd9VyQ8pp502Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kw0j4nhJWqpbk1JdoTcnIE0HHfHnre7W0Rfcuski5nX85ulIIY2ebZYgY26zMo9sB
 moY9eCEscP9YWFnMqp91LKQKU63KrX2cZtsIHahGapEejvMhHuYFGOPoUi1p/m/8YZ
 /Jqw19sx9Kuaof5LPKzNzlJVQBIDwPASfo8+NPr4=
Date: Tue, 24 Mar 2020 15:02:58 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 00/20] Reorganize media Kconfig
Message-ID: <20200324150258.492000e4@coco.lan>
In-Reply-To: <20200324135359.GA21251@pendragon.ideasonboard.com>
References: <cover.1585057134.git.mchehab+huawei@kernel.org>
 <20200324135359.GA21251@pendragon.ideasonboard.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ideasonboard.com]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1jGk97-00FF3t-Md
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
Cc: Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Helen Koike <helen.koike@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Shuah Khan <skhan@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux1394-devel@lists.sourceforge.net,
 Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Em Tue, 24 Mar 2020 15:53:59 +0200
Laurent Pinchart <laurent.pinchart@ideasonboard.com> escreveu:

> Hi Mauro,
> 
> Thank you for the patches.
> 
> On Tue, Mar 24, 2020 at 02:42:53PM +0100, Mauro Carvalho Chehab wrote:
> > This patch series do lots of reorg at the media Kconfig options.
> > It also move test drivers from platform dir to a new one.
> > 
> > After this change, the main config is organized on menus, allowing to
> > select:
> > 
> > 	- type of devices selection - the filtering options
> > 	- Media core options - with API and other core stuff
> > 	- Media core extra options
> > 	- Media drivers
> > 	- Media ancillary drivers
> > 
> > The "type of devices" menu has the filtering options for:
> > 
> > 	- Cameras and video grabbers
> > 	- Analog TV
> > 	- Digital TV
> > 	- AM/FM radio receivers/transmitters
> > 	- SDR
> > 	- CEC
> > 	- Embeded devices (SoC)
> > 	- Test drivers
> > 
> > This way, one interested only on embedded devices can unselect
> > everything but "Embedded devices (SoC)" option.
> > 
> > Distros for PC/Laptops can enable everything but 
> > "Embedded devices (SoC)" and "Test drivers".
> 
> How about a device such as the Intel IPU3 ? It's a SoC, and is present
> in laptops. Unlike the physical interface which is a fairly well defined
> way to categorize devices, creating artificial classes will always leave
> some devices without a home. We could have a capture card that supports
> both analog and digital TV. A digital TV capture card with an HDMI input
> can have a CEC device. Lots of combinations are possible.

This is basically what we had before, just better organized. 

It is a hints based selection. So, a multi-function device like IPU3
would basically do (either directly or the menu which contains it):

	depends on MEDIA_EMBEDDED_SUPPORT || MEDIA_CAMERA_SUPPORT

When the filter is disabled, both options tune to "y".


Thanks,
Mauro


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
