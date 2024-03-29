Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A948914FD
	for <lists+linux1394-devel@lfdr.de>; Fri, 29 Mar 2024 09:05:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rq7Ey-0006p8-MH;
	Fri, 29 Mar 2024 08:05:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rq7Ey-0006p0-2c
 for linux1394-devel@lists.sourceforge.net;
 Fri, 29 Mar 2024 08:05:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aKqCS9RJnx7MtsbbEZJJesa57vTOLC1+PYxUbAXMVZs=; b=HKcAx8ClNhz3iyblid4WqMV21M
 hURCR15XffM47UHeAEYyie2+Wsa4XI+26T9aghZiJ8kqu1QZ9YkGmge7Fw2e6EImsYCE8qH4xsxVd
 RCL8KzZOaOAbmv0jserHD+gE9kFUkeFD1XB2QpM3zB4szsK46iaXMytiDldl/vFNbi3w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aKqCS9RJnx7MtsbbEZJJesa57vTOLC1+PYxUbAXMVZs=; b=F3b/R+z1vOUg4Sudl6aEFhZapC
 x+YPToHw3Bj0rS90DvDvwIpoSG9iZVb1smbTVD+iR4mYoZQjwFJvWX8VwuFICqn06JSvr78I/6HqF
 O8uybFLdLZl/K54bBFIx163EVJvSu3vCB6dMHENFickpToLIk6/dPyN0US/4QAfMgplM=;
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rq7Ew-0005Ju-A8 for linux1394-devel@lists.sourceforge.net;
 Fri, 29 Mar 2024 08:05:32 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 9444932009FD;
 Fri, 29 Mar 2024 04:05:24 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Fri, 29 Mar 2024 04:05:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm2; t=1711699524; x=
 1711785924; bh=aKqCS9RJnx7MtsbbEZJJesa57vTOLC1+PYxUbAXMVZs=; b=j
 f6EHeuDErAZ4ZHulFf9KjXpvNXD9RjFm+NedskzdHwz3158mqE33iIbo+PRPPGe9
 aon329whOHCFBLOrJyqVTqX4V1JJxPBkHSN+JNwCHRXglCNiS9VucXMugBFz7B4p
 Hnl/mU7gVYQDxhu3b8sbOQoVZBcD5xmDLrKAErogxLzfjoSJPckVozto3EEOQSF6
 Z3rohS4bWwvNt349Emf5rwXX6mTpkSixZL2Ez8KWdzh9uXkWMrJZJgI3HLZn4xkC
 FnwGcoa9/wqjFKkrtBzhluZQFrYUKRkNXnUFxDjATQrF8dm+4vaLbitCNFGJ07nP
 SE0Rm/zYudyjhbXOMItnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711699524; x=1711785924; bh=aKqCS9RJnx7MtsbbEZJJesa57vTO
 LC1+PYxUbAXMVZs=; b=xlPP9nEdFDBrfgDB7WhHaVVzrhuCXHEIqVxzUbRLi/Qe
 MVoSfZRnrNJB6RNqp5Ar5rTq7I2sCc3Jrrt0AartLl1PzP11u8zyj1qnd3eMojCo
 SgBe8adup1TtfvPHK3610g5cobS3Lm2m6wGoW1Q9IKlxtfHHdbBSnFgaQepQDJDP
 dHU8ixw9v9kmBohYug49IvBqMgHam4W3UfJVTsHXWIkvST4UPQytP8eMi/zOBQ6B
 yGJSXdEELD0VT296NOH4s5V41A+x0XijoINEhuGEhd0wtHqhSvwELusbC/jqIKHp
 GJHrOb8LiDwtLyNFprxgFjKBeGBYJispNhOEJAs4+g==
X-ME-Sender: <xms:Q3YGZt-Xa4lBvf7byTuTbQbol8-RRsEy3sR1y3TKdQo3GdYXplzIrA>
 <xme:Q3YGZhsgzNhdtKeeeUtkaqVF_YM4SCnxAXOPQuV28ci8vU73fOk-tRrFpLUAwA2wH
 zZudFDkIzRRcJd2lg4>
X-ME-Received: <xmr:Q3YGZrBFBq6uQv6fY_2B-QjfTVqlJjpqxBCQm_ZhnK7R3VjSRuGvOq-zJSK1c8_6mkiXvcq5MI0y0bZTW9ppD7VGfDz62tZQWA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvtddgieefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefukfhfgggtuggjsehttd
 ertddttddvnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghk
 rghshhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeehhffhte
 etgfekvdeiueffveevueeftdelhfejieeitedvleeftdfgfeeuudekueenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhise
 hsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:Q3YGZhc4a94vMZywKJNNvTb9CTzdH6G3zwzIToPc9yPonkKDhKu5aQ>
 <xmx:Q3YGZiNQg-uGqzCDzPVA1uc3XNV5w4vQM8Es6hCPiz_O0wIgkPEWRw>
 <xmx:Q3YGZjktE_yNzVBBOJxTRz1VCwH0X9HED5dHiXF2AlJbcOeoJiDfug>
 <xmx:Q3YGZssI9R-YZ7KFRdnc2rrj6WHqCp5tdtVYaFGfg7iXL19959jnYQ>
 <xmx:RHYGZp3dt_awJ8NVUMWCUZCc4t2IOd0I-eYTNKpBv4S-j4XCgZFS7A>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 29 Mar 2024 04:05:22 -0400 (EDT)
Date: Fri, 29 Mar 2024 17:05:20 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: "edmund.raile" <edmund.raile@proton.me>
Subject: Re: [PATCH v2] PCI: Mark LSI FW643 to avoid bus reset
Message-ID: <20240329080520.GB231329@workstation.local>
Mail-Followup-To: "edmund.raile" <edmund.raile@proton.me>,
 helgaas@kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20240325012135.36861-1-o-takashi@sakamocchi.jp>
 <20240325144149.GA1432902@bhelgaas>
 <20240326131858.GA140624@workstation.local>
 <kodgse5nq6gqor6iaf5s4qo2h7mfykbor34ewtkjvcgh4iraq5@7fxn3rdch2sl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <kodgse5nq6gqor6iaf5s4qo2h7mfykbor34ewtkjvcgh4iraq5@7fxn3rdch2sl>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Thu, Mar 28, 2024 at 06:35:29PM +0000, edmund.raile
 wrote: > So instead I ran this: > ``` > su -c 'echo 1 >
 /sys/devices/pci0000\:00/0000\:00\:1c.1/0000\:03\:00.0/reset'
 > ``` > Playback stopped im [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
X-Headers-End: 1rq7Ew-0005Ju-A8
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
Cc: linux-pci@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 helgaas@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Thu, Mar 28, 2024 at 06:35:29PM +0000, edmund.raile wrote:
> So instead I ran this:
> ```
> su -c 'echo 1 > /sys/devices/pci0000\:00/0000\:00\:1c.1/0000\:03\:00.0/reset'
> ```
> Playback stopped immediately and could not be resumed.
> 
> Then I received this trace:
> 
> INFO: task alsa-sink-Firef:4110 blocked for more than 245 seconds.
>       Tainted: G        W  OE      6.6.10-1-MANJARO #1
> task:alsa-sink-Firef state:D stack:0     pid:4110  ppid:2657   flags:0x00000002
> Call Trace:
>  <TASK>
>  __schedule+0x3e7/0x1410
>  ? tlb_batch_pages_flush+0x3d/0x70
>  schedule+0x5e/0xd0
>  schedule_timeout+0x151/0x160
>  wait_for_completion+0x8a/0x160
>  fw_run_transaction+0xe5/0x120 [firewire_core d9ff4eaf1ffb23a203d413e851f405323b49fec7]
>  ? __pfx_split_transaction_timeout_callback+0x10/0x10 [firewire_core d9ff4eaf1ffb23a203d413e851f405323b49fec7]
>  ? __pfx_transmit_complete_callback+0x10/0x10 [firewire_core d9ff4eaf1ffb23a203d413e851f405323b49fec7]
>  ? __pfx_transaction_callback+0x10/0x10 [firewire_core d9ff4eaf1ffb23a203d413e851f405323b49fec7]
>  snd_fw_transaction+0x70/0x110 [snd_firewire_lib 30b43a591db389bbc6be51459cb243ba1fe1e662]
>  ff800_finish_session+0x43/0x70 [snd_fireface 5f7f3f556960f4838886792be8e9c18aa5089b0a]
>  snd_ff_stream_stop_duplex+0x39/0x70 [snd_fireface 5f7f3f556960f4838886792be8e9c18aa5089b0a]
>  pcm_hw_free+0x3c/0x50 [snd_fireface 5f7f3f556960f4838886792be8e9c18aa5089b0a]
>  snd_pcm_common_ioctl+0xe28/0x12b0 [snd_pcm 24933227879438b755ef98bc4844113025f38cdf]
>  ? __seccomp_filter+0x32c/0x510
>  ? __vm_munmap+0xbb/0x150
>  snd_pcm_ioctl+0x2e/0x50 [snd_pcm 24933227879438b755ef98bc4844113025f38cdf]
>  __x64_sys_ioctl+0x94/0xd0
>  do_syscall_64+0x5d/0x90
>  ? syscall_exit_to_user_mode+0x2b/0x40
>  ? do_syscall_64+0x6c/0x90
>  ? do_syscall_64+0x6c/0x90
>  entry_SYSCALL_64_after_hwframe+0x6e/0xd8

Please mind that current software stack to operate your device does not
support this kind of operation, as I've already sent to you several times.
Users should cancel any type of communication on IEEE 1394 bus, then
unplug devices from the bus (or power them off), finally operate
suspending.

By the way, it is apart from PCI subsystem. Your change is now going to
be reverted for v6.9.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
