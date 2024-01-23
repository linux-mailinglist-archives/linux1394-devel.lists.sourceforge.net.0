Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2308387B3
	for <lists+linux1394-devel@lfdr.de>; Tue, 23 Jan 2024 07:58:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rSAjT-0007ek-Vl;
	Tue, 23 Jan 2024 06:58:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <adamg@pobox.com>) id 1rSAjS-0007ed-U8
 for linux1394-devel@lists.sourceforge.net;
 Tue, 23 Jan 2024 06:58:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tanZkibSA20Js/WPEkpgnmf4Ch5/paC0JVcJ+PXoR34=; b=GDQNpGV+odGTWrMC1XZV3IVMqO
 ASdPLemyq1IEa4hFPLAB5ynuV8Aye8MOczj3033uiPMV2wTHHbENIlNwz+a/Ok2HsRScpKqNGe5XR
 Kmesn1CVNVNcTMTfxyZshjlDE9xU7BRxJlWoHbMTzg3bk/xdoSdo5P/uGuEqwcm2wMCg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tanZkibSA20Js/WPEkpgnmf4Ch5/paC0JVcJ+PXoR34=; b=KztmJ16emd+VbtJ4uIGM4dYWZQ
 ZM3aZ0Y2JAKI62o+uGrXzlI/X1zGD5JfJGB3Ou/QPbvhmPc2VerLaiBbkY4s7CFNOwKhPCBndmJog
 pBP7XXHl3lzWIybcfFbOTqFmtEQg9kuiG4ZE6cetlOYmDgYmFuzVksNy0B4heicn6irQ=;
Received: from pb-smtp2.pobox.com ([64.147.108.71])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rSAjQ-0005gd-Aj for linux1394-devel@lists.sourceforge.net;
 Tue, 23 Jan 2024 06:58:02 +0000
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 24F871CC1B3;
 Tue, 23 Jan 2024 01:57:50 -0500 (EST) (envelope-from adamg@pobox.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=pobox.com; h=date:from
 :to:cc:subject:message-id:references:mime-version:content-type
 :in-reply-to; s=sasl; bh=wd0tzoCxgiOLQhDHe7tNd8Dx9xTN7fDuexPFCT7
 gLDA=; b=bnPwaIgv7VBPtZf+mQMNnzn/d7e/USt3PJv9TY80cK/Mt29OrPwE9kx
 PHaYC7BgMfAP5OyKMMnaGbpal3Am+3zGB5XHPGH+lgQKscymes5Yco5vMPf0BLej
 AGeCmDvwgU6i+Wf6m8zocHjwOczFwwVp5ASWWEeM4JbOlpJn6bUw=
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp2.pobox.com (Postfix) with ESMTP id 1D99B1CC1B2;
 Tue, 23 Jan 2024 01:57:50 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from pogo.deviceside.com (unknown [71.19.144.253])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 96B931CC1B1;
 Tue, 23 Jan 2024 01:57:49 -0500 (EST) (envelope-from adamg@pobox.com)
Received: from iguana.24-8.net (99-122-168-208.lightspeed.irvnca.sbcglobal.net
 [99.122.168.208])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1)
 server-digest SHA256) (No client certificate requested)
 (Authenticated sender: iguana@pogo.deviceside.com)
 by pogo.deviceside.com (Postfix) with ESMTPSA id 798ACC08DB;
 Mon, 22 Jan 2024 22:57:48 -0800 (PST)
Date: Mon, 22 Jan 2024 22:57:46 -0800
From: Adam Goldman <adamg@pobox.com>
To: Tasos Sahanidis <tasos@tasossah.com>
Subject: Re: Question regarding linux1394 and bug report
Message-ID: <Za9jagkjzL4uVFkC@iguana.24-8.net>
References: <67f8f49f-0e95-49d4-abf5-9cb4692d9dd3@tasossah.com>
 <20240105150222.GA11325@workstation.local>
 <ZahqJTeKy6W2IRix@iguana.24-8.net>
 <36ab63e4-91a2-415f-9dca-0bd748aa58da@tasossah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36ab63e4-91a2-415f-9dca-0bd748aa58da@tasossah.com>
X-Pobox-Relay-ID: B88D7D80-B9BC-11EE-B13B-25B3960A682E-07713566!pb-smtp2.pobox.com
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Tasos, On Sun, Jan 21, 2024 at 08:05:48PM +0200, Tasos
 Sahanidis wrote: > The following is from 2.6.35-rc3 on Ubuntu 10.10: ... >
 [ 530.690859] firewire_ohci: IRQ 00000080 IR OK, that's the video transmission
 that was missing from the previous message. 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rSAjQ-0005gd-Aj
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

On Sun, Jan 21, 2024 at 08:05:48PM +0200, Tasos Sahanidis wrote:
> The following is from 2.6.35-rc3 on Ubuntu 10.10:
...
> [  530.690859] firewire_ohci: IRQ 00000080 IR

OK, that's the video transmission that was missing from the previous 
message.

> This is a typical failed capture attempt on newer kernels (6.7):
> $ dvgrab -noavc -guid 00808801035809f1 -d 1
> libiec61883 warning: Transmission node has no plugs online!
...
> [ 3313.955351] firewire_ohci 0000:01:03.0: AT spd 0 tl 35, ffc1 -> ffc0, ack_pending , QR req, fffff0000904
> [ 3313.956255] firewire_ohci 0000:01:03.0: IRQ 00000020 AR_resp
> [ 3313.956261] firewire_ohci 0000:01:03.0: AR spd 0 tl 35, ffc0 -> ffc1, ack_complete, QR resp = 003f007a

The camera's oPCR0 register (the response to the read of '904) has the 
online and broadcast bits clear, indicating that the output plug will 
not be sending any video. I wonder why? (Compare to the value c03f3c7a 
in the 2.6.35-rc3 case, which has the online and broadcast bits set.)

What do the 6.7 logs look like when the camera is first turned on, 
starting with the first evt_bus_reset?

> At the moment I suspect there might be a race somewhere.

I agree, it must be timing related. That explains why it was affected by 
the seemingly unrelated workqueue change.

-- Adam


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
