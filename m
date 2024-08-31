Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED8D9670C4
	for <lists+linux1394-devel@lfdr.de>; Sat, 31 Aug 2024 12:18:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1skLBR-0007wB-Mn;
	Sat, 31 Aug 2024 10:18:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1skLBR-0007w3-2a
 for linux1394-devel@lists.sourceforge.net;
 Sat, 31 Aug 2024 10:18:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QR66+FHIJiSgBG48MLy+3zbMcA+KDsdb0u/Sg0xfO1Q=; b=bRC/q2nfDLaU33zNJHvbvk4lGE
 EGkOlmWm4mTPXgKZOrVpvocWasKDGyv3Zh5RB8f+v6bT1zJ4j0C8dSL+lgK+ztlOs4rR5rdTONDV8
 cKIaVJBOKiKI7UAB/Zr+/xDBANDxg6R9EZleXKOe3hNWqSY/tMKdCThxjoKEjpKZuPxc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QR66+FHIJiSgBG48MLy+3zbMcA+KDsdb0u/Sg0xfO1Q=; b=BIXBcIvhrMQO3/HbUusshFmdvS
 5bTPKS9QVECNMdi5LmrOoUZUy/h21BPsa08oTaeGRlHzk8UmAe6LCYshkhP++QHTnQo8yR6fFlCts
 wE1mJhV+V0RFA3Qrhd+/+xzrx6Vg90czSCH/aU+VtwMn89taHMRwSDxcFI6SrWX4IVmE=;
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1skLBR-00063R-2X for linux1394-devel@lists.sourceforge.net;
 Sat, 31 Aug 2024 10:18:17 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 7F7D428B51;
 Sat, 31 Aug 2024 05:59:49 -0400 (EDT) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:cc:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=sasl; bh=OuK/ER1bHXEyCRdSwIv3AYzPBICYhGTWUTiqD/M
 raDo=; b=NahuwJENsaU6ua37z3nBQMRxEADOaJSdKDuVtMR1+uO8P75bQTyyRLb
 /ulaUM1+g798jAGNbN3Qo9v5htrdRewrwg9SApig++VHuY5s5TOl5/KYT0n8307M
 YewFNEwPZ8VXCQ1kVsUcdMEzdbl9I5P9Rnm+SM2uzYMjQcMHPxbY=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 7752D28B4E;
 Sat, 31 Aug 2024 05:59:49 -0400 (EDT) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id D9A5E28B4D;
 Sat, 31 Aug 2024 05:59:48 -0400 (EDT) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 8CCC9C02D5;
 Sat, 31 Aug 2024 02:59:47 -0700 (PDT)
Date: Sat, 31 Aug 2024 02:59:45 -0700
From: Adam Goldman <adamg@pobox.com>
To: Andrew Ferguson <andrewferguson500@gmail.com>
Subject: Re: Bug report: Mac Target Disk Mode not working in some cases
Message-ID: <ZtLpkQguwX2I19rI@iguana.24-8.net>
References: <CAFvb365w5QXB8kGizFjytkg+Ag_bY_SB5B3LhHx2wSt7dtL1TQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFvb365w5QXB8kGizFjytkg+Ag_bY_SB5B3LhHx2wSt7dtL1TQ@mail.gmail.com>
X-Pobox-Relay-ID: C23D4402-677F-11EF-AD49-9B0F950A682E-07713566!pb-smtp2.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sun, Aug 25, 2024 at 09:31:40PM +0100, Andrew Ferguson
 wrote: > I have encountered a bug in that some Macs are not detected in Linux, 
 when > the Mac is being used in "Target Disk Mode". [...] > Mac [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1skLBR-00063R-2X
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

On Sun, Aug 25, 2024 at 09:31:40PM +0100, Andrew Ferguson wrote:
> I have encountered a bug in that some Macs are not detected in Linux, when
> the Mac is being used in "Target Disk Mode".
[...]
> Mac models that do not work:
> iBook G4
> Powerbook G4

Hi Andrew,

I did a quick test with kernel 6.8-rc1 and a titanium Powerbook G4 
(powerbook3,4 A1001). I held down T and turned on the Powerbook. After 
about 25 seconds, the FireWire logo appeared on the screen, and the 
drive appeared on Linux as sdb. I was able to read from the drive with 
dd.

Can you provide steps to reproduce the problem?

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
