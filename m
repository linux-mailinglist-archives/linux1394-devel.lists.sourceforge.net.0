Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA159D24A72
	for <lists+linux1394-devel@lfdr.de>; Thu, 15 Jan 2026 14:03:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:In-Reply-To:
	Subject:To:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x4R1S4F0Yeks999gwYaY6iFqqjtnItzQGTmEna/pVoE=; b=S6e46hiE0cH+iAp1S9rPmKRpOa
	Sm6jN67BzEdsBLtcY2C1IE1NVUlNLje0lPugvNCU/H1lVSLuudkDW7FR5Fdd3rvK/kfq2LYP8Kk/7
	S4MH6DlC0zV4iKtssqZoXzZRmxeKkZU8MP+l6MyIlN1Y+jOSsXdnsDwmp9SHPQKaWAoE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1vgN0M-00036n-KA;
	Thu, 15 Jan 2026 13:03:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <areyouloco@paranoici.org>) id 1vgN0L-00036X-4f
 for linux1394-devel@lists.sourceforge.net;
 Thu, 15 Jan 2026 13:03:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:References:In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hi6M+Pvos7Yt33GVqoo6Ac77V0efIQc5s9ErI+RMcMU=; b=WJ1k6acms7QJZiSIr557OzKICE
 C+5SITSzimjcyyel5YxMPzGoIDJcclQbDYWmTSlUVyrl4FbAjD0/LBt8QfYplATFnfFqzNyMVIJiG
 QISyN8sOfvgLO1TYe736V33kZyHya2q0rPhV1QEE8JmIMfwuObhHNIktgicYnv6e/qKk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:References
 :In-Reply-To:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hi6M+Pvos7Yt33GVqoo6Ac77V0efIQc5s9ErI+RMcMU=; b=ARPilPGvMkpPCyeFuLRIUUpUrI
 1831FmOo6q8/AWvnvweZWCY+9mB7aRS1V/B4XSs3qF6KbqU+pf8hElIl+fDrYAaKA54iDgsfop2Gs
 Ayh7ug3HV24UPtkhF3JQ5P+s96mSOphHI6Ckp6ol1wRXfgK+P3/7yEbH743aIBPDMzjk=;
Received: from latitanza.investici.org ([185.218.207.228])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vgN0K-0006e7-UO for linux1394-devel@lists.sourceforge.net;
 Thu, 15 Jan 2026 13:03:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=paranoici.org;
 s=stigmate; t=1768480692;
 bh=hi6M+Pvos7Yt33GVqoo6Ac77V0efIQc5s9ErI+RMcMU=;
 h=Date:From:To:Subject:In-Reply-To:References:From;
 b=FfJRl88uxaEW4u2GBKxXpLDqUaSe4GmZq6hP2lYfWlGiMjymMWyny8ckwaLyMdf96
 Uoecx6ExfHWouHHAVutF2CjwuK3ifv4wLd8/mXFEPMPw5hFfWW8Z0xfZBZes/RDFPf
 zWQBOYEEL5Q1+K0ut8FjZinMrKHhJwXFIXbnbC3k=
Received: from mx3.investici.org (unknown [127.0.0.1])
 by latitanza.investici.org (Postfix) with ESMTP id 4dsMw43T2ZzGqWH
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 15 Jan 2026 12:38:12 +0000 (UTC)
Received: from [185.218.207.228] (mx3.investici.org [185.218.207.228])
 (Authenticated sender: orest@paranoici.org) by localhost (Postfix) with
 ESMTPSA id 4dsMw40ZSBzGqLq
 for <linux1394-devel@lists.sourceforge.net>;
 Thu, 15 Jan 2026 12:38:12 +0000 (UTC)
Date: Thu, 15 Jan 2026 12:38:11 +0000
To: linux1394-devel@lists.sourceforge.net
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH=5D_firewire=3A_ohci=3A_fix_index_of_pa?=
 =?US-ASCII?Q?ges_for_dma_address_to_1394_OHCI_IT_context?=
In-Reply-To: <20260115123523.GA179174@workstation.local>
References: <20260114131729.16133-1-o-takashi@sakamocchi.jp>
 <20260115123523.GA179174@workstation.local>
Message-ID: <A01763CF-665C-4215-9FD2-F6686AECC6F0@paranoici.org>
MIME-Version: 1.0
Autocrypt: addr=areyouloco@paranoici.org; prefer-encrypt=mutual; keydata=
 mDMEaA4TfBYJKwYBBAHaRw8BAQdA1Lu1FLVEpzdciB7kiHZ0gV3EXeLkhmVC7I5rCr6aaQq0JkFy
 ZVlvdUxvY28/IDxhcmV5b3Vsb2NvQHBhcmFub2ljaS5vcmc+iHIEExYIABoECwkIBwIVCAIWAQIZ
 AQWCaA4TfAKeAQKbAwAKCRDX3bQSIXXRBtUyAQDp2BxmuW0ywJWS9zB6Qx7SCKqVzVQ0IrH+RPzn
 VMONggD+L4G6IuGqWX9gKoIGteK78xyyO/K5ZaI9fUrf6EY3fgi4OARoDhN8EgorBgEEAZdVAQUB
 AQdA0rtHT93xcoMSipYUarYeSYImj6Dbrl/FsSZqjLZ1lU8DAQgHiHgEGBYIAAkFgmgOE3wCmwwA
 IQkQ1920EiF10QYWIQTKljMOut0PM5DWzeLX3bQSIXXRBouoAQDCVsZz3AF8kos+UIsxz2nF8qjI
 XoR/EH7qlmNdXmETYAD/TjGFZ93Dpek2RaZPlXanfruudh+oBm1qJjGwP5ddOQQ=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: So kernel tree 6.19 is already going to contain that fix
 soon?
 Or for-next branch is some future release? On 15 January 2026 12:35:23 UTC,
 Takashi Sakamoto <o-takashi@sakamocchi.jp> wrote: >On Wed, Jan 14, 2026 at
 10:17:29PM +0900, Takashi Sakamoto wrote: >> The index of pages for dma address
 was changed [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vgN0K-0006e7-UO
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
From: AreYouLoco? via linux1394-devel <linux1394-devel@lists.sourceforge.net>
Reply-To: AreYouLoco? <areyouloco@paranoici.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

So kernel tree 6.19 is already going to contain that fix soon?

Or for-next branch is some future release?

On 15 January 2026 12:35:23 UTC, Takashi Sakamoto <o-takashi@sakamocchi.jp> wrote:
>On Wed, Jan 14, 2026 at 10:17:29PM +0900, Takashi Sakamoto wrote:
>> The index of pages for dma address was changed wrongly. This commit
>> corrents it.
>> 
>> Fixes: ef6bdffbb88d ("firewire: core: stop using page private to store DMA mapping address")
>> Signed-off-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>
>> ---
>>  drivers/firewire/ohci.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>
>Applied to for-next branch.
>
>
>Regards
>
>Takashi Sakamoto
>
>
>_______________________________________________
>mailing list linux1394-devel@lists.sourceforge.net
>https://lists.sourceforge.net/lists/listinfo/linux1394-devel


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
