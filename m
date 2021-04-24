Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB25436A5DD
	for <lists+linux1394-devel@lfdr.de>; Sun, 25 Apr 2021 10:46:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1laaP5-0004z5-Pm; Sun, 25 Apr 2021 08:46:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1laaP3-0004yW-4F
 for linux1394-devel@lists.sourceforge.net; Sun, 25 Apr 2021 08:46:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VXvcT5nGhhIk0aEfKc0pjPd9qEI0j2GMikoG2c8a6E4=; b=gyxI4Pe4JolN/Cewl1mxx825Y0
 IJJsHfiK0z1FdwXp/JVfpMHtMWrdnAPaHI7yx10NSjyRxliYX/XUchowu3hqfezjN013m3O3UOAEj
 jyrZvuFayGO/K2yz31EBe71Kc2jZdXxkni11NOvP9ltSjZMTIBbecqos+3cBXqKsIeFg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=VXvcT5nGhhIk0aEfKc0pjPd9qEI0j2GMikoG2c8a6E4=; b=A
 iC3CyeP5Lq4bgaBdx2e6SjX9M+IzC4gWFTsjuiv3gVtEk8LCSjw88n8C92hPWVyfZep4Ic+JhNp4z
 fMzbbiWqRhAsvSrTaFjskeUV0yWvb/FuDRoC+FXL9x/fAzpbZzLMFMVAnl+3Nhp42TSghJX2MyZc7
 +x2qqaUQgIroXiWY=;
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1laaOw-0001pf-G8
 for linux1394-devel@lists.sourceforge.net; Sun, 25 Apr 2021 08:46:09 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
 by mailout.nyi.internal (Postfix) with ESMTP id 9E2D45C0080
 for <linux1394-devel@lists.sourceforge.net>;
 Sat, 24 Apr 2021 10:20:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute1.internal (MEProxy); Sat, 24 Apr 2021 10:20:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:subject:message-id:mime-version:content-type; s=
 fm1; bh=VXvcT5nGhhIk0aEfKc0pjPd9qEI0j2GMikoG2c8a6E4=; b=NFQXgC+n
 kM+or64XZQfb/iYw842kV5XvzpAPUuA8Nynrf6uE/Cznd3oJ9Ly9DmMYYH+2Vj0w
 yRb0w8BRPahbYV3l+b4x2fJ/dhNnpM5OzKLowr4KDNpyoGw6/JFU9M0ic62iMiII
 gYwp3Rxpy1WjSEs42mY4Xrnke64jaEU7iSVW+C963G9vXsYZd3WvsVjx+U1CRF9U
 AciuxSWNpJAChOwFcQ5qVOVYrLDslxrhaTVCR/HkmgaIR+H/oNQR25WkxrHYXU1Y
 tr+dnzt0o32H/WPMjhiQij89hn6neyNA15UHgwyrQluF0LHccb8wVynbywZZUGGw
 tzHMZk2pJsEPLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm2; bh=VXvcT5nGhhIk0aEfKc0pjPd9qEI0j
 2GMikoG2c8a6E4=; b=RiZX0Mob09ITXrkntr9eyRCa/xBgXDdLIHAGox6z+wJVb
 +S6Qn3OYvPuHj/66RFZIWqFVWgCFobofuqtS+1LrybOh5UdNhGvBruX8Yw+5npbB
 fyIDZYk6Oo2ek7ioiPjJhTUvkACWFDdHrwQuRdl8Pq71iGEuaN9iMrvMKMGIp8s0
 9QJKzxbDwBanFpVusGGYYsDvFyKljKmWs3e7QoMRtTX8McZy199hIUi74Pe7/p0e
 Adb6qEBNzgv9Qkdh2kEmMsOkEYwEhbzWv9s20WLBoHimD3OFo7IuiaWuh76w+M2Y
 8046anroYPZREI3e1944uMDvGgeMoKb1brsylQnsA==
X-ME-Sender: <xms:HymEYM2QamOqdE6g91O7ntf9rA5v0esYvV5Djo4VbUMa_Z5E0jl_aA>
 <xme:HymEYLN3aQ_pborgNtq23bwS2Z8w5oSzPavOhgW4GBheLOpyJCw1qFauJoi6p1oWc
 kKq06FMQ1xPDKvwMz4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvddugedgjeeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkgggtugesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhepgfeluddukeehke
 eftdevgeefkeejgeffuefgvddviedtfeehvdejleeigfdtheeinecuffhomhgrihhnpehg
 ihhthhhusgdrtghomhdpfhhfrgguohdrohhrghdpfhhrvggvuggvshhkthhophdrohhrgh
 enucfkphepudegrdefrdeihedrudejheenucevlhhushhtvghrufhiiigvpedtnecurfgr
 rhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hp
X-ME-Proxy: <xmx:HymEYB6Iuy0I32h5jdCchCl3z3XQxOilaM3S8JgOTTv_guolfkBGHg>
 <xmx:HymEYAaFrTdyt7QZblT26wDR5aX8l2eo6bzQD4Upqs7ZtPvCePoHbw>
 <xmx:HymEYGHgkpLAxwYzq00XE90rpOnsmqvvFiUSAaAp7tnSmenJ_HkhOQ>
 <xmx:HymEYD9le2zSs_rajMdm2F0cUgKt9EcxMaCFfrYQVuvuo7qabkVxcw>
Received: from workstation (ae065175.dynamic.ppp.asahi-net.or.jp [14.3.65.175])
 by mail.messagingengine.com (Postfix) with ESMTPA id E9A3124005B
 for <linux1394-devel@lists.sourceforge.net>;
 Sat, 24 Apr 2021 10:20:14 -0400 (EDT)
Date: Sat, 24 Apr 2021 23:20:12 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: New udev rules for firewire character device are added to systemd
Message-ID: <20210424142012.GC3563@workstation>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1laaOw-0001pf-G8
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

Hi,

Summary of this message:
 * systemd got udev rules with new database for firewire node/unit
 * then fw character device for audio is owned by 'audio' group with ACL
 * the entries are added by my investigation, thus doesn't cover all
 * if you have firewire audio devices not listed in README of below
   repository, please contact to me with image of configuration ROM:
    * https://github.com/takaswie/am-config-roms/

The way to create image file of configuration ROM is typically:

```
$ cat /sys/bus/firewire/devices/fw1/config_rom > filename.img
```

Here, I presuppose that Linux FireWire subsystem detects your device as
'fw1'.


Well, in the past, access permission of Linux firewire character device
is decided by udev rules just for video devices[1]. This was
inconvenient some project such as ALSA and FFADO to produce audio
application.

The source code of libffado includes own file for udev rules[2] to take
firewire character device owned by 'audio' group. Additionally the rules
gives 'ID_FFADO' tag, and systemd includes another udev rule[3] to ACL
at logging-in time according to it.

As a whole, the above is not comprehensive and self-contained. I
proposed patchset to systemd for better solution and today it was merged.
 * https://github.com/systemd/systemd/pull/19124

In the patchset, I add some udev rules, based on hwdb for new entries of
node and units in IEEE 1394 bus. You can see the database[4].

The entries of database have below variables when matching to either
node or unit devices:
 * IEEE1394_UNIT_FUNCTION_MIDI
 * IEEE1394_UNIT_FUNCTION_AUDIO
 * IEEE1394_UNIT_FUNCTION_VIDEO

The added udev rules interpret the content of variables and decide group
owner of fw character device(see [1]). Furthermore, the variables are
used again to decide ACL in logging-in time(see [3], too).

The entries of database also include below variables:
 * ID_VENDOR_FROM_DATABASE
 * ID_MODEL_FROM_DATABASE

They are expected to use applications such as PipeWire and PulseAudio for
better names of sound device, which binds to unit instead of node. I
expect the variables can obsolete my former patch for pulseaudio[5].


I handy write the entries of database from my investigation, thus
it could includes the lack of your device, or mistakes. I wish you to
contact to me with image file of configuration ROM when you can not find
your device in README of my collection repository[6], or when you find
any mistakes in database file.

Thanks for your cooperation in advance.

[1] 4 rules in 'rules.d/50-udev-default.rules'
https://github.com/systemd/systemd/blob/main/rules.d/50-udev-default.rules.in#L52
[2] many rules in 'libffado/60-ffado.rules'
http://subversion.ffado.org/browser/trunk/libffado/libffado/60-ffado.rules?rev=2794
[3] 'src/login/70-uaccess.rules.m4'
https://github.com/systemd/systemd/blob/main/src/login/70-uaccess.rules.m4
[4] 'hwdb.d/80-ieee1394-unit-function.hwdb'
https://github.com/systemd/systemd/blob/main/hwdb.d/80-ieee1394-unit-function.hwdb
[5] udev: use ID_MODEL/ID_VENDOR to give friendly name for FireWire devices 
https://gitlab.freedesktop.org/pulseaudio/pulseaudio/-/commit/3ac73598c67c
[6] https://github.com/takaswie/am-config-roms/


Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
